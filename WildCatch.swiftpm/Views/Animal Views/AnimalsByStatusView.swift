//
//  SwiftUIView.swift
//  
//
//  Created by João Franco on 08/04/2023.
//

import SwiftUI

struct AnimalsByStatusView: View {
    let receivedEndangeredStatus: EndangeredStatus
    
    var body: some View {
            List(animalsByStatus) { animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)) {
                    AnimalListItem(animal: animal)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle(endangeredStatusString(for: receivedEndangeredStatus) + " Animals")
    }
    
    var animalsByStatus: [Animal] {
        return ModelData.shared.sortedAnimalsByName.filter { $0.endangeredStatus == receivedEndangeredStatus
        }
    }
}

struct AnimalsByStatusView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsByStatusView(receivedEndangeredStatus: ModelData.shared.sortedAnimalsByName[0].endangeredStatus)
    }
}

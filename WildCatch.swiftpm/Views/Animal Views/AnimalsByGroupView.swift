//
//  SwiftUIView.swift
//  
//
//  Created by João Franco on 08/04/2023.
//

import SwiftUI

struct AnimalsByGroupView: View {
    let receivedGroup: Animal.AnimalGroups
    
    var body: some View {
            List(animalsByGroup) { animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)) {
                    AnimalListItem(animal: animal)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle(receivedGroup.rawValue)
    }
    
    var animalsByGroup: [Animal] {
        return ModelData.shared.animals.filter { $0.group == receivedGroup
        }
    }
}

struct AnimalsByGroupView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsByGroupView(receivedGroup: ModelData.shared.animals[0].group)
    }
}

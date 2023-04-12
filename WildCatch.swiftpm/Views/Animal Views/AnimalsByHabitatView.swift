//
//  SwiftUIView.swift
//  
//
//  Created by João Franco on 08/04/2023.
//

import SwiftUI

struct AnimalsByHabitatView: View {
    let receivedHabitat: Habitat
    
    var body: some View {
            List(animalsByHabitat) { animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)) {
                    AnimalListItem(animal: animal)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle(receivedHabitat.rawValue)
    }
    
    var animalsByHabitat: [Animal] {
        return ModelData.shared.animals.filter { $0.habitat == receivedHabitat
        }
    }
}

struct AnimalsByHabitatView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsByHabitatView(receivedHabitat: ModelData.shared.animals[0].habitat)
    }
}

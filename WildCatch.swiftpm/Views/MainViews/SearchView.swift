//
//  SearchView.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct SearchView: View {
    @State var searchFor: String = ""
    let viewModel = ModelData()
    var body: some View {
        NavigationView {
            List(searchedResults) { animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)) {
                    AnimalListItem(animal: animal)
                }
                .listRowSeparator(.hidden)
            }
            .navigationBarTitle("Search")
        }.searchable(text: $searchFor, placement: .automatic)
    }
    
    var searchedResults: [Animal] {
        if searchFor.isEmpty {
            return ModelData.shared.sortedAnimalsByName
        } else {
            return ModelData.shared.sortedAnimalsByName.filter { $0.name.localizedCaseInsensitiveContains(searchFor)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

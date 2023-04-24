//
//  AnimalsRow.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct AnimalsRow: View {
    var categoryName: String
    var items: [Animal]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .padding(.leading)
                .font(.title3.weight(.bold))
                .padding(.bottom, -7)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { animal in
                        NavigationLink {
                            AnimalDetailView(animal: animal)
                        } label: {
                            AnimalItem(animal: animal)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct AnimalsRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsRow(
            categoryName: "Animals",
            items: Array(ModelData.shared.sortedAnimalsByName.prefix(4))
        )
    }
}

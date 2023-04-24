//
//  AnimalItem.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct AnimalItem: View {
    var animal: Animal

    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: animal.photo ?? UIImage(systemName: "questionmark")!)
                .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 141)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
            Text(animal.name)
                .foregroundColor(.primary)
            .font(.headline.weight(.medium))
        }
        .padding(.leading, 15)
    }
}

struct AnimalItem_Previews: PreviewProvider {
    static var previews: some View {
        AnimalItem(animal: ModelData.shared.sortedAnimalsByName[0])
    }
}


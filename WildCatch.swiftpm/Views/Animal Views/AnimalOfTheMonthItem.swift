//
//  AnimalOfTheMonthItem.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct AnimalOfTheMonthItem: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack {
            Image("IberianLynx")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .clipped()
            LinearGradient(
                gradient: Gradient(colors: [.clear, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(maxWidth: .infinity)
            VStack(spacing: 7) {
                Text("Animal of the Month".uppercased())
                    .font(.footnote.weight(.semibold))
                    .padding(.bottom)
                Text("Iberian Lynx")
                    .font(.title2.weight(.semibold))
                Text("The Iberian Lynx is an endangered wild cat found only in the Iberian Peninsula of southwestern Europe. Despite their small population, conservation efforts are helping to protect and stabilize their numbers.")
                    .font(.subheadline)
                    .opacity(0.8)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                    .clipped()
                NavigationLink(destination: AnimalDetailView(animal: ModelData.shared.animalOfTheMonth)) {
                    Text("See More")
                }
                .padding()
                .padding(.horizontal)
                .background(.white)
                .foregroundColor(.black)
                .mask { RoundedRectangle(cornerRadius: 40, style: .continuous) }
                .font(.subheadline.weight(.semibold))
                .padding(.top)
            }
            .frame(maxWidth: .infinity, maxHeight: 350)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
    }
}



struct AnimalOfTheMonthItem_Previews: PreviewProvider {
    static var previews: some View {
        AnimalOfTheMonthItem()
    }
}

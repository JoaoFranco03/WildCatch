//
//  SwiftUIView.swift
//
//
//  Created by João Franco on 07/04/2023.
//

import SwiftUI

struct LearnPageView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                AnimalsRow(categoryName: "Critically Endangered Species", items: ModelData.shared.criticallyEndangeredAnimals)
                AnimalsRow(categoryName: "Polar Animals", items: ModelData.shared.polarAnimals)
                AnimalOfTheMonthItem();
                AnimalsRow(categoryName: "Memoriam", items: ModelData.shared.memoriamAnimals)
                AnimalsRow(categoryName: "Cats", items: ModelData.shared.catsAnimals)
                AnimalsRow(categoryName: "Birds", items: ModelData.shared.birdsAnimals)
                AnimalsRow(categoryName: "Mammals", items: ModelData.shared.mammalsAnimals)
                AnimalsRow(categoryName: "Fish", items: ModelData.shared.fishAnimals)
            }
            .navigationTitle("Learn")
        }
    }
}

struct LearnPageView_Previews: PreviewProvider {
    static var previews: some View {
        LearnPageView()
    }
}

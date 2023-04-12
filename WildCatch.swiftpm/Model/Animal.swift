//
//  Animal.swift
//  WildCatch
//
//  Created by João Franco on 06/04/2023.
//

import Foundation
import SwiftUI

//Animal Object
class Animal: Identifiable{
    let name: String
    let group: AnimalGroups
    enum AnimalGroups : String, CaseIterable, Codable{
        case bigCats = "Big Cats"
        case mammals = "Mammals"
        case birds = "Birds"
        case reptiles = "Reptiles"
        case memoir = "Memoir"
        case fish = "Fish"
        case molluscs = "Molluscs"
        case amphibians = "Amphibians"
        case insects = "Insects"
    }
    let scientificName: String
    var description: String
    var endangeredStatus: EndangeredStatus
    var habitat: Habitat
    var funFact : String
    var photo: UIImage?
    var isAnimalOfTheMonth: Bool
    
    init(name: String, group: AnimalGroups, scientificName: String, description: String, endangeredStatus: EndangeredStatus, habitat: Habitat, funFact: String, photo: UIImage?, isAnimalOfTheMonth: Bool) {
        self.name = name
        self.group = group
        self.scientificName = scientificName
        self.description = description
        self.endangeredStatus = endangeredStatus
        self.habitat = habitat
        self.funFact = funFact
        self.photo = photo
        self.isAnimalOfTheMonth = isAnimalOfTheMonth
    }
}



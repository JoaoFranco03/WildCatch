//
//  EndangeredStatus.swift
//  WildCatch
//
//  Created by João Franco on 06/04/2023.
//

import Foundation
import SwiftUI

enum EndangeredStatus{
    case leastConcern
    case nearThreatened
    case vulnerable
    case endangered
    case criticallyEndangered
    case extinctInTheWild
    case extinct
}

//Get String of Endangered Status
func endangeredStatusString(for status: EndangeredStatus) -> String {
    switch status {
    case .leastConcern:
        return "Least Concern"
    case .nearThreatened:
        return "Near Threatened"
    case .vulnerable:
        return "Vulnerable"
    case .endangered:
        return "Endangered"
    case .criticallyEndangered:
        return "Critically Endangered"
    case .extinctInTheWild:
        return "Extinct in the Wild"
    case .extinct:
        return "Extinct"
    }
}

//Get Color By Endangered Status
func endangeredStatusColor(for status: EndangeredStatus) -> Color {
    switch status {
    case .leastConcern:
        return Color.green
    case .nearThreatened:
        return Color.green
    case .vulnerable:
        return Color.yellow
    case .endangered:
        return Color.orange
    case .criticallyEndangered:
        return Color.red
    case .extinctInTheWild:
        return Color.red
    case .extinct:
        return Color.black
    }
}

//Get Initials Image By Endangered Status
func endangeredStatusImage(for status: EndangeredStatus) -> UIImage {
    switch status {
    case .leastConcern:
        return UIImage(named: "LC")!
    case .nearThreatened:
        return UIImage(named: "NT")!
    case .vulnerable:
        return UIImage(named: "VU")!
    case .endangered:
        return UIImage(named: "EN")!
    case .criticallyEndangered:
        return UIImage(named: "CR")!
    case .extinctInTheWild:
        return UIImage(named: "EW")!
    case .extinct:
        return UIImage(named: "EX")!
    }
}

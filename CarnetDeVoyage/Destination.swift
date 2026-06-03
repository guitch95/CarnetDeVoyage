//
//  Destination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 02/06/2026.
//

import Foundation
import SwiftUI

struct Destination: Identifiable, Hashable {
    var id = UUID()
    var city: String
    var country: String
    var image: String
    var rating: Int
    var visited : Bool
    var startingColor: Color
    var endingColor : Color
    var imageBanner: ImageResource
    var description: String
}


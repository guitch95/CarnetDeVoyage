//
//  DestinationViewModel.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 03/06/2026.
//

import Foundation
import SwiftUI

@Observable
class DestinationViewModel {
    var arrOfDestinations: [Destination] = [
        Destination(
            city: "Lisbonne",
            country: "Portugal",
            image: "sun.max.fill",
            rating: 4,
            visited: true,
            startingColor: .orange,
            endingColor: .red
        ),
        Destination(
            city: "Tokyo",
            country: "Japon",
            image: "leaf.fill",
            rating: 5,
            visited: false,
            startingColor: .green,
            endingColor: .teal
        ),
        Destination(
            city: "Oslo",
            country: "Norway",
            image: "snowflake",
            rating: 4,
            visited: false,
            startingColor: .blue,
            endingColor: .blue.opacity(0.2)
            
        ),
        Destination(
            city: "Lima",
            country: "Peru",
            image: "flame.circle.fill",
            rating: 4,
            visited: false,
            startingColor: .yellow,
            endingColor: .yellow.opacity(0.4)
            
        ),
        Destination(
            city: "London",
            country: "England",
            image: "cloud.bolt.rain.fill",
            rating: 4,
            visited: false,
            startingColor: .purple,
            endingColor: .purple.opacity(0.4)
            
        ),
        Destination(
            city: "Okinawa",
            country: "Japan",
            image: "peacesign",
            rating: 4,
            visited: false,
            startingColor: .red,
            endingColor: .red.opacity(0.4)
            
        ),
        Destination(
            city: "Papeete",
            country: "Tahiti",
            image: "tree.fill",
            rating: 4,
            visited: false,
            startingColor: .orange,
            endingColor: .orange.opacity(0.4)
            
        ),
        Destination(
            city: "Budapest",
            country: "Hungary",
            image: "snowflake",
            rating: 4,
            visited: false,
            startingColor: .teal,
            endingColor: .purple.opacity(0.4)
            
        ),
        
    ]

}

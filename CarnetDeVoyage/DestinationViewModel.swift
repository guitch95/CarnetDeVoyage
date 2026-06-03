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
            endingColor: .red,
            imageBanner: .lisbon,
            description: "Lisbonne est la capitale du Portugal."
        ),
        Destination(
            city: "Tokyo",
            country: "Japon",
            image: "leaf.fill",
            rating: 5,
            visited: false,
            startingColor: .green,
            endingColor: .teal,
            imageBanner: .tokyo,
            description: "Tokyo est la capitale du Japon."
        ),
        Destination(
            city: "Oslo",
            country: "Norway",
            image: "snowflake",
            rating: 4,
            visited: false,
            startingColor: .blue,
            endingColor: .blue.opacity(0.2),
            imageBanner: .oslo,
            description: "Oslo est la capitale de la Norvège."
            
        ),
        Destination(
            city: "Lima",
            country: "Peru",
            image: "flame.circle.fill",
            rating: 4,
            visited: false,
            startingColor: .yellow,
            endingColor: .yellow.opacity(0.4),
            imageBanner: .lima,
            description: "Lima est la capitale du Pérou."
            
        ),
        Destination(
            city: "London",
            country: "England",
            image: "cloud.bolt.rain.fill",
            rating: 4,
            visited: false,
            startingColor: .purple,
            endingColor: .purple.opacity(0.4),
            imageBanner: .london,
            description: "Londres est la capitale de l'Angleterre."
            
        ),
        Destination(
            city: "Okinawa",
            country: "Japan",
            image: "peacesign",
            rating: 4,
            visited: false,
            startingColor: .red,
            endingColor: .red.opacity(0.4),
            imageBanner: .okinawa,
            description: "Okinawa est un archipel du Japon."
            
        ),
        Destination(
            city: "Papeete",
            country: "Tahiti",
            image: "tree.fill",
            rating: 4,
            visited: false,
            startingColor: .orange,
            endingColor: .orange.opacity(0.4),
            imageBanner: .tahiti,
            description: "Papeete est la capitale de l'île de Tahiti."
            
        ),
        Destination(
            city: "Budapest",
            country: "Hungary",
            image: "snowflake",
            rating: 4,
            visited: false,
            startingColor: .teal,
            endingColor: .purple.opacity(0.4),
            imageBanner: .budapest,
            description: "Budapest est la capitale de la Hongrie."
            
        ),
        
    ]

}

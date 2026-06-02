//
//  CarteDeLieu.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 02/06/2026.
//

import SwiftUI

struct CarteDeLieu: View {
    var arrOfDestinations: [Destination] = [
        Destination(
            city: "Lisbonne",
            country: "Portugal",
            background: .red,
            image: "sun.max.fill",
            rating: 4,
            visited: true,
            startingColor: .orange,
            endingColor: .red
        ),
        Destination(
            city: "Tokyo",
            country: "Japon",
            background: .green,
            image: "leaf.fill",
            rating: 5,
            visited: false,
            startingColor: .green,
            endingColor: .teal
        ),
        Destination(
            city: "Oslo",
            country: "Norway",
            background: .blue,
            image: "snowflake",
            rating: 4,
            visited: false,
            startingColor: .blue,
            endingColor: .blue.opacity(0.2)

        ),

    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                Text(
                    "Ma wishlist de voyages."
                )
                .foregroundStyle(.gray)
                .font(.title3)

                ForEach(arrOfDestinations) { destination in
                    CardDestination(
                        city: destination.city,
                        country: destination.country,
                        bgColor: destination.background,
                        rating: destination.rating,
                        symbol: destination.image,
                        visited: destination.visited,
                        startingColor: destination.startingColor,
                        endingColor: destination.endingColor
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    CarteDeLieu()
}

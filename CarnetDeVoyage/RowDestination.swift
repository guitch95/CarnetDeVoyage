//
//  RowDestination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 03/06/2026.
//

import SwiftUI

struct RowDestination: View {
    var destination: Destination
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(destination.country)").font(.title.bold())
                Text("\(destination.city)").font(.title3)
            }
            Spacer()
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            destination.startingColor,
                            destination.endingColor,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 75)
                .overlay {
                    Image(systemName: destination.image)
                        .font(.title2)
                }

        }
    }
}

#Preview {
    RowDestination(
        destination: Destination(
            city: "Lisbonne",
            country: "Portugal",
            image: "leaf.fill",
            rating: 4,
            visited: true,
            startingColor: .red,
            endingColor: .orange,
            imageBanner: .lisbon,
            description: ""
        )
    )
}

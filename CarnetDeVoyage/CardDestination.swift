//
//  CardDestination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 02/06/2026.
//

import SwiftUI

struct CardDestination: View {
    var destination : Destination
    var body: some View {
        VStack {
            UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20)
                .fill(
                    LinearGradient(
                        colors: [
                            destination.startingColor,
                            destination.endingColor
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 150)
                .overlay {
                    Image(systemName: destination.image)
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                }
                .overlay(alignment: .topTrailing) {
                    if destination.visited {
                        Label("Visité", systemImage: "checkmark.seal.fill")
                            .bold()
                            .padding(6)
                            .background(.green, in: .capsule)
                            .padding(8)
                    }
                }

            
            VStack(alignment: .leading, spacing: 5){
                Text(destination.city)
                    .font(.title)
                    .fontWeight(.semibold)
                Label(destination.country, systemImage: "map")
                    .font(.title3)
                    .foregroundStyle(.gray)
                
                HStack {
                    ForEach(1...5, id: \.self) { number in
                        Image(systemName: number > destination.rating ? "star" : "star.fill")
                            .foregroundStyle(.yellow)
                    }
                }

            }
            .padding(.leading, 10)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .leading)

        }
        .background(.gray.opacity(0.2), in: .rect(cornerRadius: 20))

    }
}

#Preview {
    CardDestination(
        destination: Destination(
            city: "Lisbonne",
            country: "Portugal",
            image: "leaf.fill",
            rating: 4,
            visited: true,
            startingColor: .red,
            endingColor: .orange
        )
    )
}

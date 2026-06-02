//
//  CardDestination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 02/06/2026.
//

import SwiftUI

struct CardDestination: View {
    var city: String
    var country: String
    var bgColor: Color
    var rating : Int
    var symbol : String
    var visited : Bool
    var startingColor : Color
    var endingColor : Color
    
    
    var body: some View {

        VStack{
            UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20)
                .fill(
                    LinearGradient(
                        colors: [startingColor, endingColor],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 150)
                .overlay {
                    Image(systemName: symbol)
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                }
                .overlay(alignment: .topTrailing) {
                    if visited {
                        Label("Visité", systemImage: "checkmark.seal.fill")
                            .bold()
                            .padding(10)
                            .background(.green, in: Capsule())
                            .offset(x: -15, y: 10)
                    }
                }

            
            VStack(alignment: .leading, spacing: 5){
                Text(city)
                    .font(.title)
                    .fontWeight(.semibold)
                Label(country, systemImage: "map")
                    .font(.title3)
                    .foregroundStyle(.gray)
                
                HStack {
                    ForEach(1...5, id: \.self) { number in
                        Image(systemName: number > rating ? "star" : "star.fill")
                            .foregroundStyle(.yellow)
                    }
                }

            }
            .padding(.leading, 10)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .leading)

        }
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 20))

    }
}

#Preview {
    CardDestination(
        city: "Lisbonne",
        country: "Portugal",
        bgColor: .blue,
        rating: 3,
        symbol: "sun.max.fill",
        visited: true,
        startingColor: .red,
        endingColor: .blue
        )
}

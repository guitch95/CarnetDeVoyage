//
//  DetailsDestination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 03/06/2026.
//

import SwiftUI

struct DetailsDestination: View {
    var destination: Destination
    var body: some View {
        VStack (spacing: 20){
            Text("\(destination.country)")
                .font(.title)
                .bold()
            
            Image(destination.imageBanner)
                .resizable()
                .scaledToFit()
            
            Text("\(destination.description)")
        }
    }
}

#Preview {
    DetailsDestination(
        destination: Destination(
            city: "Lisbonne",
            country: "Portugal",
            image: "leaf.fill",
            rating: 4,
            visited: true,
            startingColor: .red,
            endingColor: .orange,
            imageBanner: .lisbon,
            description: "Lisbonne est la capitale du Portugal."
        )
    )
}

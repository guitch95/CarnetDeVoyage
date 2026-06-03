//
//  CarteDeLieu.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 02/06/2026.
//

import SwiftUI

struct CarteDeLieu: View {
    @State private var vm = DestinationViewModel()
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                Text(
                    "Ma wishlist de voyages."
                )
                .foregroundStyle(.gray)
                .font(.title3)
                ForEach(vm.arrOfDestinations) { destination in
                    CardDestination(
                        destination: destination
                    )

                }
            }
            .padding()
        }
        .scrollIndicators(.hidden)
        .environment(vm)
    }
}

#Preview {
    CarteDeLieu()
}

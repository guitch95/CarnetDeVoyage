//
//  ListViewDestination.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 03/06/2026.
//

import SwiftUI

struct ListViewDestination: View {
    @State private var vm = DestinationViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(vm.arrOfDestinations) { destination in
                        NavigationLink(value: destination) {
                            RowDestination(
                                destination: destination
                            )
                        }
                    }
                    .onDelete { index in
                        vm.arrOfDestinations.remove(atOffsets: index)
                    }
                }
                .navigationDestination(for: Destination.self) { destination in
                    DetailsDestination(destination: destination)
                }

            }
            .navigationTitle("Voyages")

            .toolbar {
                EditButton()
            }
        }

    }

}

#Preview {
    ListViewDestination()
        .environment(DestinationViewModel())
}

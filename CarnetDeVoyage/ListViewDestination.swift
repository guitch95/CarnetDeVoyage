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
        VStack {
            List {
                ForEach(vm.arrOfDestinations) { destination in
                    RowDestination(
                        destination : destination
                    )

                }
                .onDelete { index in
                    vm.arrOfDestinations.remove(atOffsets: index)
                }

            }

        }

    }

}

#Preview {
    ListViewDestination()
        .environment(DestinationViewModel())
}

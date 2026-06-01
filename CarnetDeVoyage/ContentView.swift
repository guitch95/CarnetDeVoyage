//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Guillaume Richard on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.6)
                .ignoresSafeArea()
            VStack {
                Text("Mon carnet de voyage")
                    .font(.title)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

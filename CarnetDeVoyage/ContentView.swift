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
            Color.blue.opacity(0.8)
                .ignoresSafeArea()
            VStack {
                Text("Mon carnet de voyage")
                    .font(.title)
                    .foregroundStyle(.white)
                
                HStack(spacing: 20) {
                    Image(systemName: "globe")
                    Image(systemName: "airplane")
                    Image(systemName: "globe.europe.africa.fill")
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(.top)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Disney Princess Edition Memory Card Game
//
//  Created by Alissa Dinsmore on 11/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.75, blue: 0.8) // Light pink
                .ignoresSafeArea()
            VStack {
                Text("Disney Princess Edition Memory Card Game")
                    .font(.title).bold().multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

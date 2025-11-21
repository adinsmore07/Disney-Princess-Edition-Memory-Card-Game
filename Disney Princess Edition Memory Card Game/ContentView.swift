//
//  ContentView.swift
//  Disney Princess Edition Memory Card Game
//
//  Created by Alissa Dinsmore on 11/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.opacity(0.3).ignoresSafeArea()
                VStack {
                    Image("Disney Princess").resizable()
                        .frame(width: 300, height: 150)
                    CustomText(text: "Disney Princess Edition Memory Card Game")
                        .font(.title).bold().multilineTextAlignment(.center)
                        .padding()
                    NavigationLink("How to Play", destination: InstructionsView())
                        .font(Font.custom("Optima", size: 30))
                        .padding()
                    NavigationLink("Play Game", destination: GameView())
                        .font(Font.custom("Optima", size: 30))
                        .padding()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Optima", size: 36))
    }
}

struct InstructionsView: View {
    var body: some View {
        ZStack {
            Color.pink.opacity(0.3).ignoresSafeArea()
            VStack {
                Image("Disney Princess").resizable().frame(width: 300, height: 150)
                CustomText(text: "Disney Princess Edition Memory Card Game").multilineTextAlignment(.center)
                VStack(alignment: .leading) {
                    Text("Match all the Disney Princess cards! Each card             appears twice — find the pairs to win.")
                        .padding()
                    Text("Click a card to flip it over. Click another card to try for a match.")
                        .padding()
                    Text("If the two cards match, they stay face-up.")
                        .padding()
                    Text("If they do not match, they flip back.")
                        .padding()
                    Text("Keep going until all princesses are matched!")
                        .padding()
                    Text("Your fastest time will be set as your highest time! Try to beat your previous time!")
                        .padding()
                }
                Spacer()
            }
        }
    }
}

struct GameView: View {
    var body: some View {
        
    }
}

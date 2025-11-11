//
//  ContentView.swift
//  Tic Tac toe
//
//  Created by daniell Escareno on 11/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)) {
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
            }
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
    
}

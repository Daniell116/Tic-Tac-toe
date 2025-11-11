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
                ForEach(0..<9) { index in
                    Color.blue
                        .frame(width: 120, height: 120, alignment: .center)
                        .cornerRadius(30)
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
    
}

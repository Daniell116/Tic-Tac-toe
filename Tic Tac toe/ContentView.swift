//
//  ContentView.swift
//  Tic Tac toe
//
//  Created by daniell Escareno on 11/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "", count: 9)
    @State private var xTurn = true
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)) {
                ForEach(0..<9) { index in
                    ZStack {
                        Color.blue
                        Color.white
                            .opacity(moves[index] == "" ? 1 : 0)
                        Text(moves[index])
                            .font(.system(size: 90))
                            .fontWeight(.heavy)
                    }
                        .frame(width: 120, height: 120, alignment: .center)
                        .cornerRadius(30)
                        .onTapGesture {
                            
                            withAnimation {
                                if moves[index] == "" {
                                    moves[index] = xTurn ? "X" : "O"
                                    xTurn.toggle()
                                }
                            }
                        }
                        .rotation3DEffect(.degrees(moves[index] == "" ? 180 : 0), axis: (0, 1, 0))
                    
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
    
}

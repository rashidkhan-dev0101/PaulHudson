//
//  game.swift
//  PaulHudson
//
//  Created by RASHID on 30/04/2026.
//

import SwiftUI
import Combine


struct GameView: View {
    
    @State private var score = 0
    @State private var timeRemaining = 10
    @State private var isGameActive = false
    
    // Timer
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Text("Tap Speed Game")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Score: \(score)")
                .font(.title)
            
            Text("Time: \(timeRemaining)")
                .font(.system(size: 24, weight: .bold, design: .serif))
            
            // Tap Button
            Button {
                if isGameActive {
                    score += 1
                }
            } label: {
                Text("Tap")
                    .font(.title)
                    .frame(width: 180, height: 180)
                    .background(isGameActive ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .disabled(!isGameActive)
            
            // Start / Restart Button
            Button(isGameActive ? "Playing..." : "Start Game") {
                startGame()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .disabled(isGameActive)
            
            // Game Over Message
            if !isGameActive && timeRemaining == 0 {
                Text("Game Over! Final Score: \(score)")
                    .font(.title2)
                    .foregroundColor(.red)
            }
        }
        .padding()
        
        // Timer Logic
        .onReceive(timer) { _ in
            if isGameActive {
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    isGameActive = false
                }
            }
        }
    }
    
    // MARK: - Start Game Function
    func startGame() {
        score = 0
        timeRemaining = 10
        isGameActive = true
    }
}


#Preview {
    GameView()
}

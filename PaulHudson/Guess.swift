//
//  Guess.swift
//  PaulHudson
//
//  Created by RASHID on 26/04/2026.
//

import SwiftUI

struct Guess: View {
    @State private var count  = 0
    @State private var goal = 10
    @State private var showAlert = false
    var body: some View {
        ZStack {
            
       
            LinearGradient(colors: [.blue, .brown , .black], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    
        VStack {
            
            Text("Counter App")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
            
            Text("Goal: \(goal)")
            .font(.title2)
            .foregroundColor(.white.opacity(0.8))
            
            Text("\(count)")
            .font(.system(size: 80, weight: .bold))
            .foregroundColor(.white)
            
            
            HStack(spacing: 30) {
                
                Button {
                    if count > 0 {
                        count -= 1
                    }
                }label: {
                     Image(systemName: "minus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.red)
                        .padding()
                    
                }
                
                
                Button {
                     count += 1
                    
                    if count == goal {
                        showAlert = true
                    }
                }label: {
                     Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.green)
                        .padding()
                    
                }
                
                
                Button("Reset"){
                     count = 0
                }
                .padding()
                .background(.white)
                .foregroundColor(.black)
                .clipShape(.capsule)
                
            }
            
        }
            
        .alert("Goal reached:", isPresented: $showAlert) {
            
            Button("Continue"){
                count = 0
               
            }
        }message: {
            Text("You have reached the Goal: \(goal)")
        }
     }
    }
}

#Preview {
    Guess()
}

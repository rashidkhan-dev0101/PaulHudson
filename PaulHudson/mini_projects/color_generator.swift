//
//  color_generator.swift
//  PaulHudson
//
//  Created by RASHID on 30/04/2026.
//

import SwiftUI

struct color_generator: View {
    @State private var bgColor = Color.white
    var body: some View {
    
        ZStack  {
            bgColor.ignoresSafeArea()
            
            
            
            Button("Change Color") {
                withAnimation(.easeOut(duration: 0.5)) {
                    bgColor = Color(
                        red: Double.random(in: 0...1),
                        green: Double.random(in: 0...1),
                        blue: Double.random(in: 0...1)
                    )
                }   
            }
            .frame(width: 200, height: 60)
            .background(Color.black.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(12)
            .shadow(radius: 5)
        }
    }
}

#Preview {
    color_generator()
}

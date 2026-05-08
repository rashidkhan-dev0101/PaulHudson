//
//  custom_modifier.swift
//  PaulHudson
//
//  Created by RASHID on 05/05/2026.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStayle() -> some View {
        modifier(Title())
    }
}

struct WaterMarks: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension  View {
    
    func waterMarked(with text: String) -> some View {
        modifier(WaterMarks(text: text))
    }
}

struct custom_modifier: View {
    var body: some View {
        Color.blue
            .frame(width: 300,height: 300)
            .waterMarked(with: "Hacking With Swift")
            .cornerRadius(10)
    }
}

#Preview {
    custom_modifier()
}

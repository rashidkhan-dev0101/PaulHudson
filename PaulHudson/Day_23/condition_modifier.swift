//
//  condition_modifier.swift
//  PaulHudson
//
//  Created by RASHID on 05/05/2026.
//

import SwiftUI

struct condition_modifier: View {
    @State private var usedText = false
    var body: some View {
       
        
        
        VStack {
            
            Button("Tapped Me") {
                usedText.toggle()
            }
            .foregroundColor(usedText ? .red : .blue)
        }
    }
}

#Preview {
    condition_modifier()
}

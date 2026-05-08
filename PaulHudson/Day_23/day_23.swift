//
//  day_23.swift
//  PaulHudson
//
//  Created by RASHID on 27/04/2026.
//

import SwiftUI

struct day_23: View {
    
    
    struct CapsulText: View {
        var text: String
        var body: some View {
             Text(text)
                .font(.largeTitle)
                 .padding()
               //  .foregroundColor(.white)
                 .background(.blue)
                 .clipShape(.capsule)
        }
    }

    var body: some View {
        
        CapsulText(text: "First")
            .foregroundColor(.white)
        CapsulText(text: "Second")
            .foregroundColor(.red)

          
    }
}

#Preview {
    day_23()
}

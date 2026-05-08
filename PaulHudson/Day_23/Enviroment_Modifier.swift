//
//  Enviroment_Modifier.swift
//  PaulHudson
//
//  Created by RASHID on 05/05/2026.
//

import SwiftUI

struct Enviroment_Modifier: View {
    var body: some View {
        VStack {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .blur(radius: 1)
            Text("Hello, World!")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
      //  .blur(radius: 1)
    }
}

#Preview {
    Enviroment_Modifier()
}

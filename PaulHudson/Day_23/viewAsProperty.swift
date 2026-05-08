//
//  viewAsProperty.swift
//  PaulHudson
//
//  Created by RASHID on 05/05/2026.
//

import SwiftUI

struct viewAsProperty: View {
    var motto1: some View {
        Text("Dragon1")
    }
    
    let motto2 = Text("Dragon2")
    
    @ViewBuilder var spells: some View {
        Text("Another Dragon")
        Text("Willium Dragon")
    }
    var body: some View {
      motto1
        motto2
        spells
    }
}

#Preview {
    viewAsProperty()
}

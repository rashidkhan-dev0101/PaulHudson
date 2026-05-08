//
//  stepper.swift
//  PaulHudson
//
//  Created by RASHID on 06/05/2026.
//

import SwiftUI

struct stepper: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            .padding()
    }
        
}

#Preview {
    stepper()
}

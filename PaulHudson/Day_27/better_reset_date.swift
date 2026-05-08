//
//  better_reset_date.swift
//  PaulHudson
//
//  Created by RASHID on 07/05/2026.
//

import SwiftUI

struct better_reset_date: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    var body: some View {
        NavigationStack {
            Form {
                VStack {
                    Text("When do you want to wakeUP")
                        .font(.headline)
                    
                    
                    DatePicker("Please Enter the time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    
                    
                    Text("Desired Amount of Sleep")
                        .font(.headline)
                    
                    Stepper("\(sleepAmount.formatted())", value: $sleepAmount, in: 4...12, step: 0.25)
                    
                    
                    Stepper("\(coffeeAmount) Cups", value: $coffeeAmount, in:  1...20)
                }
            }
            .padding()
            .navigationTitle("Better Rest")
            .toolbar {
                Button("Calculate",action: calculateBedTime)
            }
        }
    }
    
    func calculateBedTime() {
        
    }
}

#Preview {
    better_reset_date()
}

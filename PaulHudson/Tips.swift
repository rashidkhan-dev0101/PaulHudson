//
//  Tips.swift
//  PaulHudson
//
//  Created by RASHID on 06/05/2026.
//

import SwiftUI


struct Tips: View {
    @State private var checkAmopunt = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    
    var totalPerPerson: Double {
        
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmopunt / 100 * tipSelection
        let grandTotal = checkAmopunt + tipValue
        
        let amountperPerson = grandTotal / peopleCount
        
        return amountperPerson
    }
    var body: some View {
        
        NavigationStack {
            
        
        Form {
            
            Section{
                TextField("Amount:", value: $checkAmopunt, format: .currency(code: Locale.current.currency?.identifier ?? "USD" ))
                    .keyboardType(.decimalPad)
            }
            
            
            Section {
                Picker("Number of Peoples", selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0) Peoples")
                    }
                }
            }
            
            Section {
                Picker("Tip Percentage", selection: $tipPercentage) {
                    ForEach(tipPercentages, id: \.self) {
                        Text($0, format: .percent)
                    }
                }
            }
            
            Section {
                Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        
        }
        .navigationTitle("WESPLIT")
        }
    }
}


#Preview {
    Tips()
}

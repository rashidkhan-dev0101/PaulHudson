//
//  working_with_dates.swift
//  PaulHudson
//
//  Created by RASHID on 06/05/2026.
//

import SwiftUI

struct working_with_dates: View {
    @State private var wakeup = Date.now
    var body: some View {
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
        
    }
}

func exampleDates() {
//    var components = DateComponents()
//    components.hour = 8
//    components.minute = 0
//    if date = Calendar.current.date(from: components) ?? .now

    let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
    let hour = components.hour ?? 0
    let minutes = components.minute ?? 0
    
        
}
#Preview {
    working_with_dates()
}

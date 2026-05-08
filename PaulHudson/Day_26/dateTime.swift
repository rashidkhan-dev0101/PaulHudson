//
//  dateTime.swift
//  PaulHudson
//
//  Created by RASHID on 06/05/2026.
//

import SwiftUI

struct dateTime: View {
    @State private var  wakeup = Date.now
    var body: some View {
        DatePicker("Please Enter the date", selection: $wakeup, in: Date.now...)
            .labelsHidden()
    }
    
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
}

#Preview {
    dateTime()
}

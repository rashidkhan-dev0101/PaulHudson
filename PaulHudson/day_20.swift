//
//  day_20.swift
//  PaulHudson
//
//  Created by RASHID on 24/04/2026.
//

import SwiftUI

struct day_20: View {
    @State private var showingAlert = false
    var body: some View {
        
        VStack {
            Button("Show Alert"){
                showingAlert = true
            }
            .alert("Important Message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) {}
                Button("Cancel",role:  .cancel) {}
            } message: {
                Text("Please read this.")
                    
            }
        }
    
    }
}

#Preview {
    day_20()
}

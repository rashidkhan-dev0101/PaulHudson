//
//  counter.swift
//  PaulHudson
//
//  Created by RASHID on 30/04/2026.
//

import SwiftUI
import Combine

struct counter: View {
    @State private var count = 0
    var body: some View {
        VStack(spacing: 20){
            Text("Counter App")
                .font(.largeTitle).bold()

            Text("\(count)")
                .font(.largeTitle).fontWeight(.bold)


            HStack {
                Button("Increase") {
                    count = count + 1
                }
                .foregroundColor(.red)


                Button("decrease") {
                    count = count - 1
                }
                .foregroundColor(.green)

                Button("reset") {
                    count = 0
                }
            }

        }
    }
}


#Preview {
    counter()
}

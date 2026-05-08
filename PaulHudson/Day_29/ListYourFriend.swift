//
//  ListYourFriend.swift
//  PaulHudson
//
//  Created by RASHID on 07/05/2026.
//

import SwiftUI

struct ListYourFriend: View {
    let peoples = ["Rashid", "Khan", "Ali", "Aslam"]
    var body: some View {
       
        List{
            
            Text("Static Row:")
            ForEach(peoples, id: \.self) {
                Text($0)
            }
           Text("Static Row:")
        }
        
    }
}

#Preview {
    ListYourFriend()
}

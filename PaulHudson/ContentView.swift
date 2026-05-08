//
//  ContentView.swift
//  PaulHudson
//
//  Created by RASHID on 24/04/2026.
//

import SwiftUI

struct ContentView: View {
   @State private  var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
   @State private  var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        }else {
            scoreTitle = "Wrong"
        }
         showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    var body: some View {
        
        ZStack {
//            LinearGradient(colors: [.blue,.black], startPoint:.top, endPoint:.bottom)
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1,green: 0.2,blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76,green: 0.15,blue: 0.2), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Text("Guess the Flage")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
            VStack(spacing: 15){
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.bold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    }label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                }
            }
            .frame (maxWidth: .infinity)
            .padding (.vertical, 20)
            .background (.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(correctAnswer)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
            
        }message: {
            Text("Your score is ???")
        }
        
    }
    
}

#Preview {
    ContentView()
}

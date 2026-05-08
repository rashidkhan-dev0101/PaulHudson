//
//  AddingList.swift
//  PaulHudson
//
//  Created by RASHID on 07/05/2026.
//

import SwiftUI

struct AddingList: View {
    @State private var usedWords = [String]()
    @State private var rootWords = ""
    @State private var newWords = ""
    
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View {
        NavigationStack {
            
            List {
                Section {
                    TextField("Enter Your Words: ", text: $newWords)
                        .textInputAutocapitalization(.never)
                }
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWords)
            .onSubmit(addNewWords)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK") {}
            } message: {
                Text(errorMessage)
            }
        }
       
        
    }
    
    func addNewWords() {
        let answer =  newWords.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0 else { return}
        
        
        guard isOrigenal(word: answer) else {
            wordError(title: "Word used Already", message: "Be more original!")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You cant spell that word from '\(rootWords)'!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up you know '\(rootWords)'!")
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWords = ""
    }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                
                let allWords = startWords.components(separatedBy: "\n")
                rootWords = allWords.randomElement() ?? "SilkWorm"
                return
            }
        }
        
        fatalError("Could not load start.txt from bundle.")
    }
    
    func isOrigenal(word: String) -> Bool{
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWords
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
                
            } else {
                return false
            }
        }
        return true
    }
    
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    
    func wordError(title: String , message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
    
    
}

#Preview {
    AddingList()
}

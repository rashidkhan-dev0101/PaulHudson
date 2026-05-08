//
//  todo.swift
//  PaulHudson
//
//  Created by RASHID on 26/04/2026.
//

import SwiftUI

struct todo: View {
    @State private var tasks: [String] = []
    @State private var newTasks = ""
    
    
    func addTask() {
            if newTasks.trimmingCharacters(in: .whitespaces).isEmpty == false {
                tasks.append(newTasks)
                newTasks = ""
            }
        }
        
    
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack {
            HStack {
                TextField("Enter the tasks....", text:  $newTasks)
                    .textFieldStyle(.roundedBorder)
                
                
                Button{
                    addTask()
                }label: {
                   Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            
            
            List{
                ForEach(tasks, id: \.self) { task in
                    Text(task)
                }
                .onDelete(perform: deleteTask)
                
            }
        }
        .navigationTitle("Todo App")
    }
}

#Preview {
    todo()
}

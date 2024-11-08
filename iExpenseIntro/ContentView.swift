//
//  ContentView.swift
//  iExpenseIntro
//
//  Created by Jason Cox on 11/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int] ()
    @State private var currentNumber = 1
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar {
                EditButton()
            }
           
        }
    }
}

#Preview {
    ContentView()
}

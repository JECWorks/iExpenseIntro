//
//  ContentView.swift
//  iExpenseIntro
//
//  Created by Jason Cox on 11/7/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
           
    }
}


#Preview {
    ContentView()
}

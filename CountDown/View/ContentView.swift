//
//  ContentView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Tim"
        var body: some View {
            VStack(alignment: .leading) {
                TextField("Enter your name", text: $name)
                Text("Hello, \(name)!")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import Foundation
import SwiftUI
//import EmojiPicker



struct ContentView: View {
    @State private var bgColor = Color.red

    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

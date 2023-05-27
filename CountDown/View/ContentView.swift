//
//  ContentView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import Foundation
import SwiftUI
//import EmojiPicker



struct FormattingControls: View {
    @State private var bgColor =
        Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        VStack {
            ColorPicker("Alignment Guides", selection: $bgColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormattingControls()
    }
}

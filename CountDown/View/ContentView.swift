//
//  ContentView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import Foundation
import SwiftUI

let fmt = ISO8601DateFormatter()

let date1 = fmt.date(from: "2017-08-06T19:20:42+0000")!
let date2 = fmt.date(from: "2020-08-06T19:20:46+0000")!
let delta = date1.timeIntervalSince(date2)

let diffs = Calendar.current.dateComponents([.year, .month, .day], from: date1, to: date2)
struct ContentView: View {
    @State private var date = Date.now

//    print(diffs)
    
    var body: some View {
        VStack {
            Text("Enter your birthday")
            Divider()
            DatePicker("Enter your birthday", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

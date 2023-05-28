//
//  ItemModel.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import SwiftUI

class itemList: ObservableObject {
//    let id = UUID()
    @Published var items = [Item]()
}

struct Item: Identifiable, Hashable {
    var id = UUID()
//    @Published var emoji: String = ""
    var title: String
//    @Published var color: Color
    
//    @Published var color: [Double] = []
//
//    var red: Double { return color[0] }
//    var green: Double { return color[1] }
//    var blue: Double { return color[2] }
//
    var date: Date
    var delta: Int
    var emoji: String = ""
    var color: Color = Color.blue
//  @Published var selectedProduct: Product? //= nil
}

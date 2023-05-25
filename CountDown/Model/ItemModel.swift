//
//  ItemModel.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import Foundation

class itemList: ObservableObject {
//    let id = UUID()
    @Published var items = [Item]()
}

class Item: Identifiable {
//    @Published var emoji: String = ""
    var title: String = ""
//    @Published var color: Color
    
//    @Published var color: [Double] = []
//
//    var red: Double { return color[0] }
//    var green: Double { return color[1] }
//    var blue: Double { return color[2] }
//    
//    @Published var date: Date = Date.now
//  @Published var selectedProduct: Product? //= nil
}

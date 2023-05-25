//
//  NewItemView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import SwiftUI

struct NewItemView: View {
    @EnvironmentObject var items: itemList
    @State private var name: String = ""
    @State private var item: Item = Item()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choisir un nom")
            Divider()
            TextField("Enter your name", text: $name)
            Text(name)
            
                .navigationTitle("Nouveau")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Enregistrer") {
                            item.title = name
                            items.items.append(item)
                        }
                        .font(.system(size: 20))
                    }
                }
        }
        .padding()
    }
}

struct NewItemView_Previews: PreviewProvider {
//    static var item: Item = Item()
    static var previews: some View {
        NewItemView()
            .environmentObject(itemList())
    }
}

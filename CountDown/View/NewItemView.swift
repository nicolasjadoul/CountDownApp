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
    @State private var item: Item = Item(title: "", date: Date.now, delta: 0)
    @State private var date = Date.now
    @State private var dateFrom = Date.now
//    @State private var delta = Date.now
    @State private var delta: Int = 0
    let calendar = Calendar(identifier: .gregorian)
    var body: some View {
        VStack(spacing: 40) {
            VStack(alignment: .leading) {
                Text("Choisir un nom")
            Divider()
            TextField("Donnez un nom a votre compte a rebour", text: $name)
//            Text(name)
            }
            VStack(alignment: .leading) {
                Text("Choisir une date")
                Divider()
                DatePicker("Enter your birthday", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
                Text("\(delta)")
                    .onAppear() {
                        delta = calendar.numberOfDaysBetween(dateFrom, and: date)
                    }
            }
        
                .navigationTitle("Nouveau")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Enregistrer") {
                            item.title = name
                            item.date = date
                            item.delta = calendar.numberOfDaysBetween(dateFrom, and: date)
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

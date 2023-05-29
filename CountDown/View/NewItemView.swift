//
//  NewItemView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 25/05/2023.
//

import SwiftUI

struct NewItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var items: itemList
    @State private var name: String = ""
    @State private var item: Item = Item(title: "", date: Date.now, delta: 0)
    @State private var date = Date.now
    @State private var dateFrom = Date.now
    @State private var emoji: String = "🗓"
    @State private var delta: Int = 0
    @State private var color = Color.red
    let calendar = Calendar(identifier: .gregorian)
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                VStack(alignment: .leading) {
                    Text("Choisir un nom")
                    Divider()
                    TextField("Donnez un nom a votre compte a rebour", text: $name)
                        .padding()
                }
                VStack(alignment: .leading) {
                    Text("Choisir un emoticone")
                    Divider()
                    HStack {
                        Spacer()
                        TextField(emoji, text: $emoji)
                            .font(.system(size: 70))
                            .frame(width: 100, height: 100)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black.opacity(0.4), style: StrokeStyle(lineWidth: 1.0)))
                            .padding()
                            .multilineTextAlignment(.center)

                        Spacer()
                    }
                }
                VStack(alignment: .leading) {
                    Text("Choisir une date")
                    Divider()
                    DatePicker("Enter your birthday", selection: $date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxHeight: 400)
                }
                VStack {
                    ColorPicker("Choisir une couleur", selection: $color)
                }
                    .navigationTitle("Nouveau")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Enregistrer") {
                                item.title = name
                                item.date = date
                                item.emoji = emoji
                                item.delta = calendar.numberOfDaysBetween(dateFrom, and: date)
                                item.color = color
                                items.items.append(item)
                                presentationMode.wrappedValue.dismiss()
                            }
                            .font(.system(size: 20))
                        }
                    }
            }
            .padding()
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
            .environmentObject(itemList())
    }
}

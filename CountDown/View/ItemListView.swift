//
//  ItemListView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 28/05/2023.
//

import SwiftUI

struct ItemListView: View {
    @EnvironmentObject var items: itemList

    var body: some View {
        List($items.items, id: \.self) { $item in
            NavigationLink(destination: DetailView(item: item)) {
                ItemView(item: item)
                //                    .listRowInsets(EdgeInsets(top: -20, leading: -20, bottom: -20, trailing: -20))
            }
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
            .environmentObject(itemList())
    }
}

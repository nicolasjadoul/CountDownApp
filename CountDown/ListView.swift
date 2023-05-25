//
//  ListView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 24/05/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 5) {
                    NavigationLink(destination: Text("view")) {
                        AddItemView()
                    }
                    ForEach(1..<6) { i in
                        
                        NavigationLink(destination: DetailView()) {
                            ItemView()
                        }
                    }
                }
            }
            .navigationTitle(Text("Compte a rebour"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Trier") {
                        print("Help tapped!")
                    }
                    .font(.system(size: 20))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Modifier") {
                        print("Help tapped!")
                    }
                    .font(.system(size: 20))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

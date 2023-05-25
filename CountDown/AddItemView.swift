//
//  TestingView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 24/05/2023.
//

import SwiftUI

struct AddItemView: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("Nouveau Compte a rebours")
                .frame(maxHeight: .infinity)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .opacity(0.7)
                .font(.system(size: 20))
            Image(systemName: "plus")
                .frame(width: 55)
                .frame(maxHeight: .infinity)
                .padding()
                .font(.system(size: 40))
                .background(.blue)
                .foregroundColor(.white)
        }
        .frame(height: 90)
        .frame(
            minWidth: 0,
            maxWidth: .infinity
        )
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}

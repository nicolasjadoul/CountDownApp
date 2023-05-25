//
//  ItemView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 24/05/2023.
//

import SwiftUI

struct ItemView: View {
    
    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: "plus.circle")
                .font(.system(size: 40))
                .frame(maxWidth: 30)
                .frame(maxHeight: .infinity)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
//                .border(.black)
            VStack(alignment: .leading) {
                Text("Vacances en bretagne !")
                    .font(.system(size: 20))
                    .lineLimit(1)
                    .bold()
                Text("ven., 5 jui. 2023")
                    .lineLimit(1)
                    .font(.system(size: 15))
            }
                .frame(maxHeight: .infinity)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .foregroundColor(.white)
//                .border(.black)

                
            VStack {
                Text("43")
                    .font(.system(size: 30))
                Text("jours")
            }
                .frame(maxWidth: 55)
//                .fixedSize()
                .frame(maxHeight: .infinity)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .opacity(0.7)
//                .border(.black)
        }
//        .fixedSize(horizontal: false, vertical: true)
        .frame(height: 90)
//        .fixedSize()
        .frame(
            minWidth: 0,
            maxWidth: .infinity
        )
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}

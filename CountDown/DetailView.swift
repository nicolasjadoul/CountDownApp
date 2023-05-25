//
//  DetailView.swift
//  CountDown
//
//  Created by Jadoul Nicolas on 24/05/2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
                .navigationBarTitle("Compte a rebours", displayMode: .inline)
                .opacity(0.7)
            VStack(spacing: 30) {
                ZStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 250, height: 250)
                    Image(systemName: "plus.circle")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                }
                VStack(alignment: .center) {
                    Text("Vacance bretagne")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    Text("Jeudi, 6 juil. 2023")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
                HStack {
                    VStack {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .bold()
                        Text("mois")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                    VStack {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .bold()
                        Text("jours")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                    VStack {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .bold()
                        Text("heures")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                    VStack {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .bold()
                        Text("minutes")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                    VStack {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .bold()
                        Text("secondes")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                }
                .padding(10)
                .background(.blue)
                .opacity(0.7)
                .cornerRadius(15)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

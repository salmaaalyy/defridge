//
//  WalletView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/22/22.
//

import SwiftUI

let grey = Color(red: 0.949, green: 0.945, blue: 0.969)

struct WalletView: View {
    var body: some View {
        ZStack{
            grey.ignoresSafeArea()
            Image("cards2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

//
//  CookView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/23/22.
//

import SwiftUI

struct CookView: View {
    var body: some View {
        ZStack{
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }
}

struct CookView_Previews: PreviewProvider {
    static var previews: some View {
        CookView()
    }
}

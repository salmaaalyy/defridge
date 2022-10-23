//
//  ScanView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/22/22.
//

import SwiftUI
import AVFoundation
import UIKit

struct ScanView: View {
    var body: some View {
        ZStack{
            Image("camera")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding()

        }
            .background(Color.black)
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}

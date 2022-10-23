//
//  DonateView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/23/22.
//

import SwiftUI
import MapKit

struct DonateView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.6062,
                                           longitude: -122.3321),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )

    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea(.all)
    }
}

struct DonateView_Previews: PreviewProvider {
    static var previews: some View {
        DonateView()
    }
}

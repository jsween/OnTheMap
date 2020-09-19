//
//  MapExampleView.swift
//  OnTheMap
//
//  Created by Jonathan Sweeney on 9/18/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 45.5051,
                longitude: -122.6750
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 7,
                longitudeDelta: 7
            )
        )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapExampleView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

//
//  Modality.swift
//  HumanInterfaceGuidelines
//
//  Created by Michael Novosad on 04.09.2021.
//

import SwiftUI
import MapKit

struct Modality: View {
    
    @State private var coordinates = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 46.482952, longitude: 30.712481), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
    
    var body: some View {
        Group {
            Map(coordinateRegion: $coordinates)
                .ignoresSafeArea(.all)
        }
    }
}

struct Modality_Previews: PreviewProvider {
    static var previews: some View {
        Modality()
    }
}

//
//  MapView.swift
//  Day 003 - Slide Over Card
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }
  
  func updateUIView(_ view: MKMapView, context: Context) {
    let coordinate = CLLocationCoordinate2D(
      latitude: -33.523065, longitude: 151.394551)
    let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    view.setRegion(region, animated: true)
  }
}



#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif

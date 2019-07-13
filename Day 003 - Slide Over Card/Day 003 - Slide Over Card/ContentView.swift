//
//  ContentView.swift
//  Day 003 - Slide Over Card
//
//  Created by Wayne Dahlberg on 7/12/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    ZStack(alignment: Alignment.top) {
      MapView()
      SlideOverCard {
        VStack {
          Image("maitlandbay")
          Text("Maitland Bay")
            .font(.headline)
          Spacer()
        }
      }
    }
    .edgesIgnoringSafeArea(.vertical)
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

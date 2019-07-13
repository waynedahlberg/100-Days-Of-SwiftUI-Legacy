//
//  ContentView.swift
//  Day 008 - Pickers
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  @State private var countryIndex = 0
  var countries = ["USA", "Germany", "Russia", "Canada", "Mexico", "Romania", "North Korea"]
  
  var body: some View {
    NavigationView {
      Picker(selection: $countryIndex, label: Text("Country")) {
        ForEach(0 ..< countries.count) {
          Text(self.countries[$0]).tag($0)
        }
      }
      .navigationBarTitle(Text("Country"))
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

//
//  ContentView.swift
//  Day 005 - Alert
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  @State private var isShowingAlert = false
  
  var body: some View {
    Button(action: {
      self.isShowingAlert = true
    }) {
      Text("Show Alert")
    }
      .presentation($isShowingAlert) {
        Alert(title: Text("Wayne Dahlberg"), message: Text("Hello SwiftUI"), dismissButton: .default(Text("Dismiss")))
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

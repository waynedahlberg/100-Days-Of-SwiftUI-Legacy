//
//  CardView.swift
//  Day 002 - Ice Cream
//
//  Created by Wayne Dahlberg on 7/10/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

extension AnyTransition {
  static func fadeAndScale() -> AnyTransition {
    AnyTransition.scale().combined(with: .opacity)
  }
}

struct CardView : View {
  @State var animateIn = false
  var product: Product
  var delay: Double
  
  var body: some View {
    VStack {
      VStack(alignement: .leading, spacing: -4) {
        Text("Hello world")
      }
    }
  }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
  static var previews: some View {
    CardView()
  }
}
#endif

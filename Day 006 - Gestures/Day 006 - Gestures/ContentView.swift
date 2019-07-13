//
//  ContentView.swift
//  Day 006 - Gestures
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  @State private var offset: CGSize = .zero
  
  var body: some View {
    let drag = DragGesture()
      .onChanged { self.offset = $0.translation }
      .onEnded {
        if $0.translation.width < -100 {
          self.offset = .init(width: -1000, height: 0)
        } else if $0.translation.width > 100 {
          self.offset = .init(width: 1000, height: 0)
        } else {
          self.offset = .zero
        }
    }
    
    return PersonView()
      .background(Color.red)
      .cornerRadius(8)
      .shadow(radius: 8)
      .padding()
      .offset(x: offset.width, y: offset.height)
      .gesture(drag)
      .animation(.spring())
  }
}

struct PersonView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Rectangle()
        .fill(Color.yellow)
        .cornerRadius(8)
        .frame(height: 300)
      Text("Wayne Dahlberg")
        .font(.title)
        .color(.white)
      
      Text("Product Designer")
        .font(.body)
        .color(.white)
    }
    .padding()
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

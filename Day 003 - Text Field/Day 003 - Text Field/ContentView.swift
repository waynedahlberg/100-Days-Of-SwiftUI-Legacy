//
//  ContentView.swift
//  Day 003 - Text Field
//
//  Created by Wayne Dahlberg on 7/11/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct ContentView : View {
  @State var userInput: String = ""
  
  var body: some View {
    TextField("Enter something", text: $userInput)
      .padding()
      .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
      .cornerRadius(15.0)
      .padding()
      .offset(y: 280)
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

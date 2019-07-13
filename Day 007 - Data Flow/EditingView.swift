//
//  EditingView.swift
//  Day 007 - Data Flow
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct EditingView: View {
  @Environment(\.isPresented) var isPresented: Binding<Bool>
  @Binding var person: Person
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal information")) {
          TextField($person.name)
          Stepper(value: $person.age) {
            Text("Age: \(person.age)")
          }
        }
        
        Section {
          Button(action: { self.isPresented?.value.toggle() }) {
            Text("Save")
          }
        }
      }.navigationBarTitle(Text(person.name))
    }
  }
}

#if DEBUG
struct EditingView_Previews : PreviewProvider {
  static var previews: some View {
    EditingView(
  }
}
#endif

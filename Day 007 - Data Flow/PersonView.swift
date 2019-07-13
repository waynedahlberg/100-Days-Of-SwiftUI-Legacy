//
//  PersonView.swift
//  Day 007 - Data Flow
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct PersonView : View {
  @ObjectBinding var store: PersonStore
  
  var body: some View {
    NavigationView {
      List(store.persons) { person in
        VStack(alignment: .leading) {
          Text(person.name)
            .font(.headline)
          Text("Age: \(person.age)")
            .font(.subheadline)
            .color(.secondary)
        }
      }
      .onAppear(perform: { self.store.fetch() })
      .navigationBarTitle(Text("Persons"))
    }
  }
}

#if DEBUG
struct PersonView_Previews : PreviewProvider {
  static var previews: some View {
    PersonView()
  }
}
#endif

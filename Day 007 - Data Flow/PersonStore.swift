//
//  PersonStore.swift
//  Day 007 - Data Flow
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI
import Combine

struct Person: Identifiable {
  let id: UUID
  var name: String
  var age: Int
}

final class PersonStore: BindableObject {
  let didChange = PassthroughSubject<Void, Never>()
  
  var persons: [Person] = [] {
    didSet {
      DispatchQueue.main.async {
        self.didChange.send(())
      }
    }
  }
  
  func fetch() {
    persons = [
      .init(id: .init(), name: "Manny", age: 32),
      .init(id: .init(), name: "Moe", age: 27),
      .init(id: .init(), name: "Jack", age: 30)
    ]
  }
}



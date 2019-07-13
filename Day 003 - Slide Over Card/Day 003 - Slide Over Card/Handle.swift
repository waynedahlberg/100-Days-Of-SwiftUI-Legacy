//
//  Handle.swift
//  Day 003 - Slide Over Card
//
//  Created by Wayne Dahlberg on 7/13/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct Handle : View {
  private let handleThickness = CGFloat(5.0)
  var body: some View {
    RoundedRectangle(cornerRadius: handleThickness / 2.0)
      .frame(width: 40, height: handleThickness)
      .foregroundColor(.secondary)
      .padding(5)
  }
}


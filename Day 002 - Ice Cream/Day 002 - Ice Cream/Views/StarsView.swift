//
//  StarsView.swift
//  Day 002 - Ice Cream
//
//  Created by Wayne Dahlberg on 7/10/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct StarsView : View {
  var rating: Int
  var reviewCount: Int
  var color: Color
  
  var body: some View {
    VStack(spacing: 16) {
      HStack(alignment: .center, spacing: 16.0) {
        ForEach(1...5) { index in
          Image(systemName: index <= self.rating ? "star.fill" : "star")
            .resizable()
            .frame(width: 24.0, height: 24.0)
        }
      }
    }
    .foregroundColor(self.color)
  }
}

#if DEBUG
struct StarsView_Previews : PreviewProvider {
  static var previews: some View {
    StarsView(rating: productData[0].ratings, reviewCount: productData[0].reviewsCount, color: productData[0].fontColor())
        .previewLayout(.fixed(width: 300, height: 100))
  }
}
#endif

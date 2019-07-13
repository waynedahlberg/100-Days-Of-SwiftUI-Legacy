//
//  Product.swift
//  Day 002 - Ice Cream
//
//  Created by Wayne Dahlberg on 7/10/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct Product: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var subname: String
  var description: String
  var imageName: String
  var reviewsCount: Int
  var ratings: Int
  var price: Double
  var backgroundColor: [[Double]]
  var textColor: [Double]
  
  func image(forSize size: Int) -> Image {
    ImageStore.shared.image(name: imageName, size: size)
  }
  
  func backgroundGradient() -> RadialGradient {
    let endGradient = Color(red: backgroundColor[0][0] / 255, green: backgroundColor[0][1] / 255, blue: backgroundColor[0][2] / 255)
    let startGradient = Color(red: backgroundColor[1][0] / 255, green: backgroundColor[1][1] / 255, blue: backgroundColor[1][2] / 255)
    
    return RadialGradient(gradient: Gradient(colors: [endGradient, startGradient]), center: .top, startRadius: 1, endRadius: 600)
  }
  
  func fontColor() -> Color {
    return Color(red: textColor[0] / 255, green: textColor[1] / 255, blue: textColor[2] / 255)
  }
  
  func shadowColor() -> Color {
    return Color(.sRGB, red: textColor[0] / 255, green: textColor[1] / 255, blue: textColor[2] / 255, opacity: opacity)
  }
}

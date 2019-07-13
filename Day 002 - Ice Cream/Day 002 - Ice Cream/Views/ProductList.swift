//
//  ProductList.swift
//  Day 002 - Ice Cream
//
//  Created by Wayne Dahlberg on 7/10/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ProductList : View {
  @State var dismissFlag = false
  @State var product: Product = productData[0]
  @State var off: Length = 130
  var products: [Product]
  
  var body: some View {
    NavigationView {
      ScrollView {
        VStack {
          ForEach(self.products.identified(by: \.name)) { item in
            
            CardView
            
          }
        }
      }
    }
  }
}

#if DEBUG
struct ProductList_Previews : PreviewProvider {
  static var previews: some View {
    ProductList()
  }
}
#endif

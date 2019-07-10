//
//  ContentView.swift
//  Day 001
//
//  Created by Wayne Dahlberg on 7/9/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 17)
        .foregroundColor(Color.purple)
        .frame(width: UIScreen.main.bounds.width - 20, height: 200)
        .shadow(color: Color.red, radius: 20, x: 0, y: 20)
        HStack {
            VStack(spacing: 24) {
                HStack {
                  
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Jing A Studio")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            Text("Tell me your dream")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 255.0, green: 255.0, blue: 255.0))
                      
                                Text("Invite friends to send 100 red packets")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                                    .lineLimit(2)
                                    .frame(width: 152)
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 20)
              
                        HStack {
                            Button(action: {}) {
                                Text("Details")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing], 16)
                                    .padding([.top, .bottom], 8)
                            }
                            .background(Color.orange)
                            .cornerRadius(4)
                            Spacer()
                        }
                        .padding(.horizontal, 24)
                }
            Image("Illustration5")
              .resizable()
              .frame(width: 128, height: 128)
              .padding(.trailing, 16)
            Spacer()
            }
    }
    .frame(width: UIScreen.main.bounds.width - 40, height: 200)
    
    
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif

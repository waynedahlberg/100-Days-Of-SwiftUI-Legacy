//
//  BlurView.swift
//  Day 002 - Ice Cream
//
//  Created by Wayne Dahlberg on 7/10/19.
//  Copyright © 2019 Floppy Hat, LLC. All rights reserved.
//

import UIKit
import SwiftUI

struct BlurView : UIViewRepresentable {
  let style: UIBlurEffect.Style
  
  func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
    let view = UIView(frame: .zero)
    view.backgroundColor = UIColor.init(white: 1, alpha: 0.5)
    let blurEffect = UIBlurEffect(style: style)
    let blurView = UIVisualEffectView(effect: blurEffect)
    blurView.translatesAutoresizingMaskIntoConstraints = false
    view.insertSubview(blurView, at: 0)
    NSLayoutConstraint.activate([
      blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
      blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
    ])
    return view
  }
  
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<BlurView>) {
    
  }

}


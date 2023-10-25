//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Enes Kaya on 25.10.2023.
//

import UIKit

extension UIColor {
// for everysingle UIColorr add static
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}

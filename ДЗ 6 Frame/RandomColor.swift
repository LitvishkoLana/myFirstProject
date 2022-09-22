//
//  RandomColor.swift
//  ДЗ 6 Frame
//
//  Created by Светлана on 14.09.22.
//

import UIKit

extension UIColor {
    static var random: UIColor{
       return UIColor(
           red: .random(in: 0...1),
           green: .random(in: 0...1),
           blue: .random(in: 0...1),
           alpha: 1.0
       )
    }
}

//
//  Extensions.swift
//  WhatIsUp
//
//  Created by Yeontae Kim on 2/19/18.
//  Copyright © 2018 YTK. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false // Use AutoLayout
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}

extension UIColor {
    
    class var logoBackground: UIColor { // Maroon color
        return UIColor(red: 176 / 255.0, green: 48.0 / 255.0, blue: 96.0 / 255.0, alpha: 1.0)
    }
    
    class var textField: UIColor { // Plum color
        return UIColor(red: 221.0 / 255.0, green: 160.0 / 255.0, blue: 221.0 / 255.0, alpha: 1.0)
    }
    
    class var signUp: UIColor { // Orchid color
        return UIColor(red: 218.0 / 255.0, green: 112.0 / 255.0, blue: 214.0 / 255.0, alpha: 1.0)
    }
    
    class var signUpEnabled: UIColor { // Violet Red color
        return UIColor(red: 208.0 / 255.0, green: 32 / 255.0, blue: 144.0 / 255.0, alpha: 1.0)
    }
    
}

extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
}

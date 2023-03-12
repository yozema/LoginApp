//
//  BackgroundColor.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

extension UIView {
    func changeBackgroundColor() {
        let gradient = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = [
            UIColor.systemCyan.cgColor,
            UIColor.systemPurple.cgColor,
            UIColor.systemOrange.cgColor
        ]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

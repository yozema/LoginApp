//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 11.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeMessage: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
        view.changeBackgroundColor()
    }
    
    // MARK: - IBActions
    @IBAction func logoutButtonTapped(){
        dismiss(animated: true)
    }
}

    // MARK: - Set color background
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

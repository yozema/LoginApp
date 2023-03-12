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

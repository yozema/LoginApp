//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 11.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeMessage: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
    }
    
    // MARK: - IBActions
    @IBAction func logoutButtonTapped(){
        dismiss(animated: true)
    }
}

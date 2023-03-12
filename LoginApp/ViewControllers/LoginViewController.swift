//
//  ViewController.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 11.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeMessage = "Welcome, \(userName)!"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    // MARK: - IBActions
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotCredentials(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your user name is \(userName) 😉")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Дрозд Матвей on 28.11.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let username = "1"
    let password = "1"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard usernameTF.text == username, passwordTF.text == password else {
            let alert = UIAlertController(
                title: "Invalid Name or Password",
                message: "Please enter correct Name or Password",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "Got it", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
            return false
        }
        return true
    }
    
    @IBAction func forgotNameButtonDidTapped() {
        let alert = UIAlertController(
            title: "No worries",
            message: "Here's your name: \(username)",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Got it", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonDidTapped() {
        let alert = UIAlertController(
            title: "No worries",
            message: "Here's your password: \(password)",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Got it", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}


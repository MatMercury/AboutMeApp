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
    
    private let user = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = user.name
        passwordTF.text = user.password
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        
        tabBarVC?.viewControllers?.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                // Я так и не понял как снести конкретно эту строку
                let briefDescriptionVC = navigationVC.topViewController as? BriefDescriptionViewController
                briefDescriptionVC?.name = user.developer.name
                briefDescriptionVC?.surName = user.developer.surname
                briefDescriptionVC?.cityOfResidence = user.developer.cityOfResidence
                briefDescriptionVC?.busyness = user.developer.busyness
            }
        }
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user.name
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard usernameTF.text == user.name, passwordTF.text == user.password else {
            showAlert(
                with: "Invalid Name or Password",
                andMessage: "Please enter correct Name or Password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0 ? showAlert(
            with: "No worries",
            andMessage: "Here is your name: \(user.name)"
        ) : showAlert(
            with: "No worries",
            andMessage: "Here is your password: \(user.password)"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(with title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Got it!", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


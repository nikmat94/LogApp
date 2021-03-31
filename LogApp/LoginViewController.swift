//
//  ViewController.swift
//  LogApp
//
//  Created by Никита  on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "admin"
    private let password = "qwerty"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? PresentViewController else { return }
        loginVC.greeting = nameTF.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func goingToGreetingButton() {
        if userName != nameTF.text || password != passwordTF.text {
            showAlert(with: "Error!", and: "Enter your correct name and password")
            nameTF.text = ""
            passwordTF.text = ""
        }
    }
    @IBAction func alertForgotNameButton() {
        showAlert(with: "Be careful!", and: "Your name is \(userName)")
    }
    
    @IBAction func alertForgotPasswordButton() {
        showAlert(with: "Be careful!", and: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    }

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


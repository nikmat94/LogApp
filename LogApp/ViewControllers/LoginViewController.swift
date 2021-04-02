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
    
    let person = Person.getUserInfo()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in tabBarController.viewControllers! {
            if let presentVC = viewController as? PresentViewController {
                presentVC.greeting = "\(person.name) \(person.surname)"
            }
            if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.aboutMe = person.aboutMe
            }
        
        }
            
            
        
        
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func goingToGreetingButton() {
        if person.login != nameTF.text || person.password != passwordTF.text {
            showAlert(with: "Error!", and: "Enter your correct name and password")
            passwordTF.text = ""
        }
    }
    @IBAction func alertForgotNameButton() {
        showAlert(with: "Be careful!", and: "Your name is \(person.login)")
    }
    
    @IBAction func alertForgotPasswordButton() {
        showAlert(with: "Be careful!", and: "Your password is \(person.password)")
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


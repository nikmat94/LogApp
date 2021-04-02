//
//  PresentViewController.swift
//  LogApp
//
//  Created by Никита  on 31.03.2021.
//

import UIKit

class PresentViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(greeting!)!"
    }
    
    

}

//
//  AboutMeViewController.swift
//  LogApp
//
//  Created by Никита  on 02.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMeLabel: UILabel!
    
    var aboutMe = ""
    private let person = Person.getUserInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let myHabbitsVC = segue.destination as! MyHabbitsViewController
        myHabbitsVC.myHabbits = person.aboutHabbits
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeLabel.text = aboutMe

    }


}

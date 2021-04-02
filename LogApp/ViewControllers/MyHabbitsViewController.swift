//
//  MyHabbitsViewController.swift
//  LogApp
//
//  Created by Никита  on 03.04.2021.
//

import UIKit

class MyHabbitsViewController: UIViewController {

    @IBOutlet var myHabbitsLabel: UILabel!
    var myHabbits = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myHabbitsLabel.text = myHabbits
    }


}

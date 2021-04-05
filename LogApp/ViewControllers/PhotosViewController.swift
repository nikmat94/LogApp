//
//  PhotosViewController.swift
//  LogApp
//
//  Created by Никита  on 05.04.2021.
//

import UIKit

enum Photos {
    case first, second, third
}

class PhotosViewController: UIViewController {

    @IBOutlet var imageFirst: UIImageView!
    @IBOutlet var imageSecond: UIImageView!
    @IBOutlet var imageThird: UIImageView!
    
    @IBOutlet var nextButton: UIButton!
    
    private var currentPhoto = Photos.first
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageFirst.alpha = 1
        imageSecond.alpha = 0
        imageThird.alpha = 0
        nextButton.layer.cornerRadius = 10
        
        }

    @IBAction func showNextImage() {
        switch currentPhoto {
        case .first:
            imageFirst.alpha = 0
            imageSecond.alpha = 1
            currentPhoto = .second
        case .second:
            imageSecond.alpha = 0
            imageThird.alpha = 1
            currentPhoto = .third
        case .third:
            imageThird.alpha = 0
            imageFirst.alpha = 1
            currentPhoto = .first
        }
    
    
    }

}

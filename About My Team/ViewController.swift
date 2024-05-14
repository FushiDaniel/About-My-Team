//
//  ViewController.swift
//  About My Team
//
//  Created by STDC_28 on 11/05/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.clipToCircle()
    }
}

extension UIImageView {
    func clipToCircle(){
        self.layoutIfNeeded()
        self.layer.borderColor =
        UIColor.systemBlue.cgColor
        self.layer.borderWidth = 10.0
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}


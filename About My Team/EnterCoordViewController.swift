//
//  EnterCoordViewController.swift
//  About My Team
//
//  Created by Aiman Daniel on 14/05/2024.
//

import UIKit
import MapKit

class EnterCoordViewController: UIViewController {
    
    @IBOutlet var latitudeTextField: UITextField!
    @IBOutlet var longitudeTextField: UITextField!
    var newCoordinate: CLLocationCoordinate2D?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let latitudeText = latitudeTextField.text, let longitudeText =  longitudeTextField.text, let latitude = Double(latitudeText), let longitude = Double(longitudeText){
            newCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }

}

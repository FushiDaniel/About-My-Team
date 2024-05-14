//
//  MapViewController.swift
//  About My Team
//
//  Created by Aiman Daniel on 14/05/2024.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindNewLocation(segue: UIStoryboardSegue){
        if let sourceViewController = segue.source as? EnterCoordViewController, let newCoordinate = sourceViewController.newCoordinate{
            map.setRegion(MKCoordinateRegion(center: newCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: true)
        }
    }

}

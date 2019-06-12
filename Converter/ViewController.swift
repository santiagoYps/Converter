/**
 *
 * Applications development for mobile devices
 * -------------------------------------------
 *
 * ViewController class as controller for Converter App
 *
 * @author Francisco Martinez
 *
 * This example is based on the source code from the book
 * of Craig Grummit - iOS Development with Swift
 * Copyright © 2016 Craig Grummitt. All rights reserved.
 *
 *
 *
 */
//

import UIKit

class ViewController: UIViewController {
    
    /**************************** Add this code ***************************/
    
    //Object of model class Distance
    var distance = Distance(miles: 1000)
    
    /**************************** Add this code ***************************/
    @IBOutlet weak var milesTextField: UITextField!
    
    @IBOutlet weak var kmTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Set values from model class
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
    }
    @IBAction func convertToKm(_ sender: Any) {
        if let miles = Double(milesTextField.text!) {
            distance.miles = miles
            kmTextField.text = "\(Double(distance.km))"
        }
        
    }
    
    @IBAction func convertToMiles(_ sender: Any) {
        /********************** Add this code *********************/
        if let km = Double(kmTextField.text!) {
            distance.km = km
            milesTextField.text = "\(Double(distance.miles))"
        }
        /********************** Add this code *********************/
    }
    
}


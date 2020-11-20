//
//  ResultViewController.swift
//  013_Accelerometer
//
//  Created by 松島優希 on 2020/11/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var button3: UIButton!
    var accelerationX: Double?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button3.layer.cornerRadius = 50

        let result: Double = fabs(accelerationX!*100)
        label.text = String(format: "%.1f°",result)
    }
    
    
    

    

}

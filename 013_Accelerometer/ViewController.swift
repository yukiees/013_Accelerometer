//
//  ViewController.swift
//  013_Accelerometer
//
//  Created by 松島優希 on 2020/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.cornerRadius = 50
    }

    @IBAction func unwindToViewController(segue: UIStoryboardSegue){
        
    }
    
}


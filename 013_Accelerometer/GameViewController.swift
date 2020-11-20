//
//  GameViewController.swift
//  013_Accelerometer
//
//  Created by 松島優希 on 2020/11/20.
//

import UIKit
import CoreMotion

class GameViewController: UIViewController {
    

    @IBOutlet weak var awaImageView: UIImageView!
    @IBOutlet weak var button2: UIButton!
    let motionManager = CMMotionManager()
    var accelerationX: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2.layer.cornerRadius = 50
        
        if motionManager.isAccelerometerAvailable{
            motionManager.accelerometerUpdateInterval = 0.01
            motionManager.startAccelerometerUpdates(to: OperationQueue.current!, withHandler: {(data,error)in
                self.accelerationX = (data?.acceleration.x)!
                self.awaImageView.center.x =
                    self.awaImageView.center.x - CGFloat(self.accelerationX!*20)
                
                if self.awaImageView.frame.origin.x < 40{
                    self.awaImageView.frame.origin.x = 40
                }
                if self.awaImageView.frame.origin.x > 260{
                    self.awaImageView.frame.origin.x = 260
                }
            })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.accelerationX = self.accelerationX!
    }
    

}

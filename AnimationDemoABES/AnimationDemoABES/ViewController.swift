//
//  ViewController.swift
//  AnimationDemoABES
//
//  Created by Cerebro on 24/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        motionManager.accelerometerUpdateInterval = 0.01
        
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data, error) -> Void in
            
            println(data.acceleration.x)
            println(data.acceleration.y)
            println(data.acceleration.z)
        })
        
        motionManager.stopAccelerometerUpdates()
        
        
        
        
        
        
        
        
        
        
        
        
        
        motionManager.startGyroUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data, error) -> Void in
            
            println(data.rotationRate.x)
            println(data.rotationRate.y)
            println(data.rotationRate.z)
            
        })
        
        motionManager.startMagnetometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data, error) -> Void in
            
            println(data.magneticField.x)
            println(data.magneticField.y)
            println(data.magneticField.z)
            
        })
    }

    @IBAction func animate() {
       
        UIView.animateWithDuration(1.0, delay: 2.0, options: UIViewAnimationOptions.BeginFromCurrentState, animations: { () -> Void in
            if(self.myView.backgroundColor == UIColor.redColor()) {
                self.myView.backgroundColor = UIColor.greenColor()
                self.myView.frame.origin.x = 200
            } else {
                self.myView.backgroundColor = UIColor.redColor()
                self.myView.frame.origin.x = 20
            }
            
        }) { (success) -> Void in
            if(success) {
                println("animation completed successfully")
            } else {
                println("animation failed")
            }
        }
    
    }

}


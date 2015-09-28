//
//  ViewController.swift
//  SegueDemoABES
//
//  Created by Cerebro on 27/09/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        println("prepare for segue on first screen called")
        
        
        if segue.identifier == "path_1" {
            println("we are going through path 1")
            var vc = segue.destinationViewController as! CKSecondScreenViewController
            vc.number = 10
            vc.range = 5
            vc.userName = "my user name"
            
        } else if segue.identifier == "path_2" {
            
            var vc = segue.destinationViewController as! CKSecondScreenViewController
            vc.number = 500
            vc.range = 999
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        println("should perform segue on screen one called")
        
        return true
    }
}


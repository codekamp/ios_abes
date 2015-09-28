//
//  ViewController.swift
//  GestureReconizerDemo
//
//  Created by Cerebro on 28/09/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pinch(sender: UIPinchGestureRecognizer) {
        
        println(sender.scale)
        
    }
    
    @IBOutlet weak var rectVeiw: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func leftSwipe(sender: UISwipeGestureRecognizer) {
        
        if rectVeiw.backgroundColor == UIColor.redColor() {
            rectVeiw.backgroundColor = UIColor.greenColor()
        } else {
            rectVeiw.backgroundColor = UIColor.redColor()
        }
    }

}


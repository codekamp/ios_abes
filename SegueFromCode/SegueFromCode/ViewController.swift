//
//  ViewController.swift
//  SegueFromCode
//
//  Created by Cerebro on 10/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: UIButton) {
        let bundle = NSBundle(forClass: self.dynamicType);
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        
        let vc = storyboard.instantiateViewControllerWithIdentifier("second_screen") as! CKSecondScreenViewController
        
        self.showViewController(vc, sender: sender)
    }

}


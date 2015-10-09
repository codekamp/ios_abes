//
//  ViewController.swift
//  CustomViewDemoABES
//
//  Created by Cerebro on 09/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCloud: CKTextCloud!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        myCloud.text1 = "India"
        
        myCloud.text2 = "USA"
        
        myCloud.text3 = "Pakistan"
        
        myCloud.textColor = UIColor.greenColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


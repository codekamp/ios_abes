//
//  CKSecondScreenViewController.swift
//  SegueDemoABES
//
//  Created by Cerebro on 27/09/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class CKSecondScreenViewController: UIViewController {
    
    @IBOutlet weak var demoTextField: UILabel!
    
    var number = 0
    var range = 0
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("view did load of second screen called")
        
        println(number)
        println(range)
        
        self.demoTextField.text = self.userName
        var myview = self.view
        
        var numberFormatter1 = NSNumberFormatter()
        
        var numberFormatter2 = numberFormatter1
        
        numberFormatter1 = NSNumberFormatter()
        numberFormatter2 = numberFormatter1
        
        var myTableView = UITableView()
        myTableView.dataSource
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        println("view will Appear of second screen called")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println("view did Appear of second screen called")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        println("view will DisAppear of second screen called")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        println("view Did DisAppear of second screen called")
    }
    
}

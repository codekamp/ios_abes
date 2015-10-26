
//
//  ViewController.swift
//  NSNotificationDemoABES
//
//  Created by Cerebro on 24/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "refreshTableView:", name: "new_favorite_student_added", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshTableView(notification:NSNotification) {
        println("we will call tableView.reloadData here. user info is \(notification.userInfo)")
        
        self.presentViewController(self, animated: true, completion: nil)
        
    }


    @IBAction func tapped() {
        NSNotificationCenter.defaultCenter().postNotificationName("new_favorite_student_added", object: nil, userInfo: ["student": "Rishi"])
        
    }
}


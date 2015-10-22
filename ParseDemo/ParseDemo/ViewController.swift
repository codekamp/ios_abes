//
//  ViewController.swift
//  ParseDemo
//
//  Created by Cerebro on 20/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let query = Course.query()!
        
        let courses = query.findObjects() as! [Course]
        
        for course in courses {
            println(course.title)
        }
        
        self.navigationItem.leftBarButtonItem?.title =
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


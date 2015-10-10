//
//  ViewController.swift
//  CoreDataDemoABES
//
//  Created by Cerebro on 10/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!
    
    @IBOutlet weak var nameField: UITextField!
    

    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sumbit(sender: UIButton) {
        let name = nameField.text
        let email = emailField.text
        
        let student = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: self.context) as! Student
        
        student.name = name
        student.email = email
        
        let course = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: self.context) as! Course
        
        course.title = "iOS using Swift"
        course.descript = "this is descritiopn of course"

    }

    @IBAction func showData(sender: UIButton) {
        let request = NSFetchRequest(entityName: "Student")
        
        let data = self.context.executeFetchRequest(request, error: nil)
        as! [Student]
        
        println(data[0].name)
        
        
        println(data)
    }
}


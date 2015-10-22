//
//  ViewController.swift
//  ViewElementsABES
//
//  Created by Cerebro on 19/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource, UIAlertViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var studentNames = ["Rohit", "Piyush", "Kushagra", "Chandresh", "John", "Jack", "Jill"]
    var studentBranch = ["IT", "CS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.pickerView.selectRow(5, inComponent: 1, animated: false)
        self.pickerView.selectedRowInComponent(1)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return 2
        }
        
        return 7
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        if component == 0 {
            return studentBranch[row%2]
        }
        
        return studentNames[row]
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myAlert = UIAlertView(title: "demo alert", message: "this is an alert to tell you that sudent \(studentNames[row]) was selected", delegate: self, cancelButtonTitle: "okie", otherButtonTitles: "hello")
        
        myAlert.show()
        
        self.view.autoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleHeight
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        println(buttonIndex)
    }
    
    


}


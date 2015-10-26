//
//  ViewController.swift
//  AtuoLayoutABES
//
//  Created by Cerebro on 19/09/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var enteringNumber = false
    var firstNumber = 0.0
    var operation:String?
    
    @IBOutlet weak var resultTextField: UITextField!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardDidShowNotification, object: nil, queue: NSOperationQueue.mainQueue()) { (notification) -> Void in
            println("Keyboard showed up")
            println(notification.userInfo)
        }
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleKeyboardHide:", name: UIKeyboardDidHideNotification, object: nil)
    }
    
    func handleKeyboardHide(notification:NSNotification) {
        println("Keyboard hide")
        println(notification.userInfo)
    }
    
    
    
    @IBAction func digitPressed(sender: UIButton) {
        
        var aRandomVar = Test(labelOfSomeValue: 5, "Hello")
        aRandomVar.add(first:5, secondNumber: 10)
        if(enteringNumber) {
            resultTextField.text = resultTextField.text + sender.currentTitle!
        } else {
            resultTextField.text = sender.currentTitle!
        }
        
        enteringNumber = true
        
    }
    
    @IBAction func operationPressed(sender: UIButton) {
        println("operation button pressed")
        calculate()
        
        enteringNumber = false
    
        
        
        firstNumber = NSNumberFormatter().numberFromString(resultTextField.text)?.doubleValue ?? 0.0
        

        
        operation = sender.currentTitle
    }
    
    @IBAction func calculate() {
        enteringNumber = false
        
        if operation != nil {
            
            var result:Double
            var secondNumber = NSNumberFormatter().numberFromString(resultTextField.text)!.doubleValue
            
            if (operation == "+") {
                result = firstNumber + secondNumber
            } else if (operation == "-") {
                result = firstNumber - secondNumber
            } else {
                result = firstNumber * secondNumber
            }
            
            resultTextField.text = "\(result)"
            
            firstNumber = 0.0
            operation = nil
        }
    }
    
    @IBAction func parentViewTapped(sender: UITapGestureRecognizer) {
        
        self.resultTextField.resignFirstResponder()
    }
}


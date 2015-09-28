//
//  ViewController.swift
//  TableViewDemoABES
//
//  Created by Cerebro on 27/09/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.rowHeight = 100.0

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch(section) {
        case 0:
            return 7;
        case 1:
            return 5;
        case 2:
            return 8;
        case 3:
            return 3;
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "this is section \(section)"
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        cell.textLabel?.text = "This is cell number \(indexPath.row) of section \(indexPath.section)"
        
        println("table view asked for data for row number \(indexPath.row) of section \(indexPath.section)")
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("cell \(indexPath.row) of section \(indexPath.section) was selected")
        
        var someInt:Int = NSNumberFormatter().numberFromString("10.5")!.integerValue
    }
    
    


}


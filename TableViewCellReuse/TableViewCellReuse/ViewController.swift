//
//  ViewController.swift
//  TableViewCellReuse
//
//  Created by Cerebro on 05/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 550;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //fetch row from database
        //check it's type
        
        let remainder = indexPath.row % 3
    
        if (indexPath.row % 3) == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("faculty_cell") as! FacultyTableViewCell
            cell.nameLable.text = "Faculty \(indexPath.row)"
            cell.phoneNumberLabel.text = "\(indexPath.row)\(indexPath.row)\(indexPath.row)"
            
            return cell
        } else {
            var cell = tableView.dequeueReusableCellWithIdentifier("student_cell") as! StudentTableViewCell
            cell.nameButton.setTitle("student \(indexPath.row)", forState: UIControlState.Normal)
            return cell
        }
    }


}


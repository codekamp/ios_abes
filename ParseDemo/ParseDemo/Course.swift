//
//  Course.swift
//  ParseDemo
//
//  Created by Cerebro on 20/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation
import Parse

class Course : PFObject, PFSubclassing {
    
    @NSManaged var title: String
    
    override class func initialize() {
        struct Static {
            static var onceToken : dispatch_once_t = 0;
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return "Course"
    }
}
//
//  Course.swift
//  CoreDataDemoABES
//
//  Created by Cerebro on 16/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation
import CoreData

class Course: NSManagedObject {

    @NSManaged var descript: String
    @NSManaged var title: String
    @NSManaged var students: NSSet

}

//
//  Student.swift
//  CoreDataDemoABES
//
//  Created by Cerebro on 16/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation
import CoreData

class Student: NSManagedObject {

    @NSManaged var email: String
    @NSManaged var name: String
    @NSManaged var course: Course

}

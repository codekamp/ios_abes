//
//  Student.swift
//  CoreDataDemoABES
//
//  Created by Cerebro on 10/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation
import CoreData

class Student: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var email: String

}

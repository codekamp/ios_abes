//
//  Course.swift
//  CoreDataDemoABES
//
//  Created by Cerebro on 10/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation
import CoreData

class Course: NSManagedObject {

    @NSManaged var title: String
    @NSManaged var descript: String

}

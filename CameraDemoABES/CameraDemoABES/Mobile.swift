//
//  Mobile.swift
//  CameraDemoABES
//
//  Created by Cerebro on 21/11/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import Foundation

class Mobile {
    
    var model:String
    var screenWidth:Float
    var screenHeight:Float
    var cameraResolution:Float
    var nfcAvailable:Bool?
    
    init(model:String, screenWidth:Float, screenHeight:Float, cameraResolution:Float) {
        self.model = model
        self.screenHeight = screenHeight
        self.screenWidth = screenWidth
        self.cameraResolution = cameraResolution
    }
    
    convenience init(famous:FamousMobileTypes) {
        
        switch(famous) {
        case .IPhone6s:
            self.init(model:"Iphone 6s", screenWidth:3, screenHeight:4.5, cameraResolution:8)
            self.nfcAvailable = false
        case .Nexus5:
            self.init(model:"Nexus 5", screenWidth:4, screenHeight:5.5, cameraResolution:16)
            self.nfcAvailable = true
        }
    }
}

enum FamousMobileTypes {
    case IPhone6s
    case Nexus5
}
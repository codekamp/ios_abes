//
//  CKTextCloud.swift
//  CustomViewDemoABES
//
//  Created by Cerebro on 09/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit

@IBDesignable class CKTextCloud: UIView {
    
    @IBInspectable var text1:String = "" {
        didSet{
            label1.text = text1
        }
    }
    
    
    @IBInspectable var text2:String = "" {
        didSet{
            label2.text = text2
        }
    }
    
    @IBInspectable var text3:String = "" {
        didSet{
            label3.text = text3
        }
    }
    
  
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var label3: UILabel!
    
    @IBInspectable var textColor:UIColor = UIColor.blackColor() {
        didSet {
            label1.textColor = textColor
            label2.textColor = textColor
            label3.textColor = textColor
        }
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    
    func setup() {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "CKTextCloud", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        view.frame = self.bounds
        
        self.addSubview(view)
        
        
    }
    
}

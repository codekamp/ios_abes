//
//  ViewController.swift
//  CameraDemoABES
//
//  Created by Cerebro on 21/11/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let student1 = Student(name: "Rahul")
        
        let mobile1 = Mobile(famous: FamousMobileTypes.Nexus5)
        
        let smartPhone1 = SmartPhone(famous: <#FamousMobileTypes#>)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeProfilePIc(sender: UIButton) {
        let imagePicker = UIImagePickerController();
        imagePicker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            imagePicker.sourceType = .Camera
            imagePicker.cameraDevice = UIImagePickerControllerCameraDevice.Rear
        } else if UIImagePickerController.isSourceTypeAvailable(.SavedPhotosAlbum){
            imagePicker.sourceType = .PhotoLibrary
        } else {
            imagePicker.sourceType = .PhotoLibrary
        }
        
        imagePicker.allowsEditing = true
        
        imagePicker.mediaTypes = [kUTTypeMovie]
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        imageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
}


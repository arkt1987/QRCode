//
//  ViewController.swift
//  QRCode
//
//  Created by Suraj B on 11/25/17.
//  Copyright © 2017 CZSM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textfield: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func okbtn(_ sender: Any) {
        if let mystring = textfield.text
        {
            let data = mystring.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            
            let img = UIImage(ciImage: (filter?.outputImage)!)
            
            imgView.image = img
        }
    }
    
}//class


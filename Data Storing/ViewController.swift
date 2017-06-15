//
//  ViewController.swift
//  Data Storing
//
//  Created by Student06 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Implicit
    var strPhone = " "
    
    
    @IBOutlet weak var NumberPhone: UILabel!
    
    
    @IBOutlet weak var TextPhone: UITextField!
    
    
    @IBAction func SaveButton(_ sender: Any) {
        
        NumberPhone.text = " "
        
        //Get Value Form TextField
        strPhone = TextPhone.text!
        print("strPhone ==> \(strPhone)")
         //Save
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        NumberPhone.text = strPhone
        
    }
    
    @IBAction func Delete(_ sender: Any) {
        NumberPhone.text = " "
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let strPmnPhone = UserDefaults.standard.object(forKey: "Phone")
        if let myPmnPhone = strPmnPhone as? String {
            print("Result from Pmn ==> \(myPmnPhone)")
        }
        
    }
    
    //

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


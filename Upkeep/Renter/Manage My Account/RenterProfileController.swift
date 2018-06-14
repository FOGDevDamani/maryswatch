//
//  RenterProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterProfileController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var renterFirstName: UITextField!
    @IBOutlet weak var renterLastName: UITextField!
    @IBOutlet weak var renterEmail: UITextField!
    @IBOutlet weak var renterAddress: UITextField!
    @IBOutlet weak var renterCellPhone: UITextField!
    @IBOutlet weak var renterState: UITextField!
    @IBOutlet weak var renterCity: UITextField!
    @IBOutlet weak var renterZipcode: UITextField!
    @IBOutlet weak var renterCounty: UITextField!
    @IBOutlet weak var renterUsername: UITextField!
    @IBOutlet weak var renterPassword: UITextField!
    
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func storeRenterProfileData(_ sender: Any) {
        storeData()
    }
    
    
    
    
    

    func storeData() {
        defaults.set(renterFirstName.text!, forKey: "renterFirstName")
        defaults.set(renterLastName.text!, forKey: "renterLastName")
        defaults.set(renterEmail.text!, forKey: "renterEmail")
        defaults.set(renterAddress.text!, forKey: "renterAddress")
        defaults.set(renterCellPhone.text!, forKey: "renterCellPhone")
        defaults.set(renterState.text!, forKey: "renterState")
        defaults.set(renterCity.text!, forKey: "renterCity")
        defaults.set(renterZipcode.text!, forKey: "renterZipcode")
        defaults.set(renterCounty.text!, forKey: "renterCounty")
        defaults.set(renterUsername.text!, forKey: "renterUsername")
        defaults.set(renterPassword.text!, forKey: "renterPassword")
    }
    
    func getData() {
        if let data = defaults.value(forKey: "renterFirstName") {
            renterFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterLastName") {
            renterLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterEmail") {
            renterEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterAddress") {
            renterAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterCellPhone") {
            renterCellPhone.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterState") {
            renterState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterCity") {
            renterCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterZipcode") {
            renterZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "rentercCounty") {
            renterCounty.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterUsername") {
            renterFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "renterPassword") {
            renterPassword.text = data as? String
        } else {}
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

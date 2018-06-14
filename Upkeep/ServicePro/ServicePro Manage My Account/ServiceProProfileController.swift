//
//  ServiceProProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class ServiceProProfileController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var spTypeOfCompany: UITextField!
    @IBOutlet weak var spFirstName: UITextField!
    @IBOutlet weak var spLastName: UITextField!
    @IBOutlet weak var spEmail: UITextField!
    @IBOutlet weak var spCellPhone: UITextField!
    @IBOutlet weak var spAddress: UITextField!
    @IBOutlet weak var spState: UITextField!
    @IBOutlet weak var spCity: UITextField!
    @IBOutlet weak var spZipcode: UITextField!
    @IBOutlet weak var spCounty: UITextField!
    @IBOutlet weak var spUsername: UITextField!
    @IBOutlet weak var spPassword: UITextField!
    
    
    
    
    
    
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func submitSPProfileData(_ sender: Any) {
        storeData()
    }
    
    
    func storeData() {
        defaults.set(spTypeOfCompany.text!, forKey: "SPTypeOfCompany")
        defaults.set(spFirstName.text!, forKey: "SPFirstName")
        defaults.set(spLastName.text!, forKey: "SPLastName")
        defaults.set(spEmail.text!, forKey: "SPEmail")
        defaults.set(spCellPhone.text!, forKey: "SPCellPhone")
        defaults.set(spAddress.text!, forKey: "SPAddress")
        defaults.set(spState.text!, forKey: "SPState")
        defaults.set(spCity.text!, forKey: "SPCity")
        defaults.set(spZipcode.text!, forKey: "SPZipcode")
        defaults.set(spCounty.text!, forKey: "SPCounty")
        defaults.set(spUsername.text!, forKey: "SPUsername")
        defaults.set(spPassword.text!, forKey: "SPPassword")
    }
    
    func getData() {
        if let data = defaults.value(forKey: "SPTypeOfCompany") {
            spTypeOfCompany.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPFirstName") {
            spFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPLastName") {
            spLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPEmail") {
            spEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPCellPhone") {
            spCellPhone.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPAddress") {
            spAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPState") {
            spState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPCity") {
            spCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPZipcode") {
            spZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPCounty") {
            spCounty.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPUsername") {
            spUsername.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "SPPassword") {
            spPassword.text = data as? String
        } else {}
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    

}

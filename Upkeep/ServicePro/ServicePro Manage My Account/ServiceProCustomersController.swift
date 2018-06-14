//
//  ServiceProCustomersController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class ServiceProCustomersController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var spCustomerFirstName: UITextField!
    @IBOutlet weak var spCustomerLastName: UITextField!
    @IBOutlet weak var spCustomerEmail: UITextField!
    @IBOutlet weak var spCustomerAddress: UITextField!
    @IBOutlet weak var spCustomerState: UITextField!
    @IBOutlet weak var spCustomerCity: UITextField!
    @IBOutlet weak var spCustomerZipcode: UITextField!
    @IBOutlet weak var spCustomerCounty: UITextField!
    @IBOutlet weak var spCustomerCellPhone: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func spAddCustomerData(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    
    
    func storeData() {
        defaults.set(spCustomerFirstName.text!, forKey: "spCFirstName")
        defaults.set(spCustomerLastName.text!, forKey: "spCLastName")
        defaults.set(spCustomerEmail.text!, forKey: "spCEmail")
        defaults.set(spCustomerAddress.text!, forKey: "spCAddress")
        defaults.set(spCustomerState.text!, forKey: "spCState")
        defaults.set(spCustomerCity.text!, forKey: "spCCity")
        defaults.set(spCustomerZipcode.text!, forKey: "spCZipcode")
        defaults.set(spCustomerCounty.text!, forKey: "spCCounty")
        defaults.set(spCustomerCellPhone.text!, forKey: "spCCellPhone")
        
    }
    
    func getData() {
        if let data = defaults.value(forKey: "spCFirstName") {
            spCustomerFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCLastName") {
            spCustomerLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCEmail") {
            spCustomerEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCAddress") {
            spCustomerAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCState") {
            spCustomerState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCCity") {
            spCustomerCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCZipcode") {
            spCustomerZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCCounty") {
            spCustomerCounty.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCCellPhone") {
            spCustomerCellPhone.text = data as? String
        } else {}
        
    }
    

}

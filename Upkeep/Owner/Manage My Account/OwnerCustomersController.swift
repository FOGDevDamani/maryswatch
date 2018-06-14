//
//  OwnerCustomersController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerCustomersController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ownerCustomerFirstName: UITextField!
    @IBOutlet weak var ownerCustomerLastName: UITextField!
    @IBOutlet weak var ownerCustomerEmail: UITextField!
    @IBOutlet weak var ownerCustomerAddress: UITextField!
    @IBOutlet weak var ownerCustomerState: UITextField!
    @IBOutlet weak var ownerCustomerCity: UITextField!
    @IBOutlet weak var ownerCustomerZipcode: UITextField!
    @IBOutlet weak var ownerCustomerCounty: UITextField!
    @IBOutlet weak var ownerCustomerCellPhone: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func addCustomerSettings(_ sender: Any) {
        storeData()
    }
    
    
    
    func storeData() {
        defaults.set(ownerCustomerFirstName.text!, forKey: "OCFirstName")
        defaults.set(ownerCustomerLastName.text!, forKey: "OCLastName")
        defaults.set(ownerCustomerEmail, forKey: "OCEmail")
        defaults.set(ownerCustomerAddress, forKey: "OCAddress")
        defaults.set(ownerCustomerState, forKey: "OCState")
        defaults.set(ownerCustomerCity, forKey: "OCCity")
        defaults.set(ownerCustomerZipcode, forKey: "OCZipcode")
        defaults.set(ownerCustomerCounty, forKey: "OCCounty")
        defaults.set(ownerCustomerCellPhone, forKey: "OCCellPhone")
        
    }
    
    func getData() {
        if let data = defaults.value(forKey: "OCFirstName") {
            ownerCustomerFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCLastName") {
            ownerCustomerLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCEmail") {
            ownerCustomerEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCAddress") {
            ownerCustomerAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCState") {
            ownerCustomerState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCCity") {
            ownerCustomerCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCZipcode") {
            ownerCustomerZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCCounty") {
            ownerCustomerCounty.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OCCellPhone") {
            ownerCustomerCellPhone.text = data as? String
        } else {}
        
    }
    

   
    

}

//
//  OwnerProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerProfileController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var typeOfOwner: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var cellPhone: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitSettings(_ sender: Any) {
        storeData()
        
    }
    
    func storeData() {
        defaults.set(typeOfOwner.text!, forKey: "typeOfOwner")
        defaults.set(firstName.text!, forKey: "firstName")
        defaults.set(lastName.text!, forKey: "lastName")
        defaults.set(email.text!, forKey: "email")
        defaults.set(cellPhone.text!, forKey: "cellPhone")
        defaults.set(address.text!, forKey: "address")
        defaults.set(state.text!, forKey: "state")
        defaults.set(city.text!, forKey: "city")
        defaults.set(zipCode.text!, forKey: "zipCode")
        defaults.set(country.text!, forKey: "country")
        defaults.set(userName.text!, forKey: "userName")
        defaults.set(password.text!, forKey: "password")
        
    }
    
    func getData() {
        if let data = defaults.value(forKey: "typeOfOwner") {
            typeOfOwner.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "firstName") {
            firstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "lastName") {
            lastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "email") {
            email.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "cellPhone") {
            cellPhone.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "address") {
            address.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "state") {
            state.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "city") {
            city.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "zipCode") {
            zipCode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "country") {
            country.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "userName") {
            userName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "password") {
            password.text = data as? String
        } else {}
      
        
    }

}

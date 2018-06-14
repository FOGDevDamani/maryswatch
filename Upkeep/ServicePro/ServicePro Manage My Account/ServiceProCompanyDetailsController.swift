//
//  ServiceProCompanyDetailsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class ServiceProCompanyDetailsController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var spCompanyDetails: UITextField!
    @IBOutlet weak var spCompanyName: UITextField!
    @IBOutlet weak var spCompanyAddress: UITextField!
    @IBOutlet weak var spCompanyState: UITextField!
    @IBOutlet weak var spCompanyCity: UITextField!
    @IBOutlet weak var spCompanyZipcode: UITextField!
    @IBOutlet weak var spWebsite: UITextField!
    @IBOutlet weak var spBusinessPhone: UITextField!
    @IBOutlet weak var spEIN: UITextField!
    @IBOutlet weak var spNumberOfEmployees: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func supSPCompanyDetailsData(_ sender: Any) {
        storeData()
    }
    
    
    
    

    func storeData() {
        defaults.set(spCompanyDetails.text!, forKey: "spCompanyDetails")
        defaults.set(spCompanyName.text!, forKey: "spCompanyName")
        defaults.set(spCompanyAddress.text!, forKey: "spCompanyAddress")
        defaults.set(spCompanyState.text!, forKey: "spCompanyState")
        defaults.set(spCompanyCity.text!, forKey: "spCompanyCity")
        defaults.set(spCompanyZipcode.text!, forKey: "spCompanyZipcode")
        defaults.set(spWebsite.text!, forKey: "spCompanyWebsite")
        defaults.set(spBusinessPhone.text!, forKey: "spBusinessPhone")
        defaults.set(spEIN.text, forKey: "spEIN")
        defaults.set(spNumberOfEmployees.text, forKey: "spNumberOfEmployees")
        
    }
    
    
    func getData() {
        if let data = defaults.value(forKey: "spCompanyDetails") {
            spCompanyDetails.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyName") {
            spCompanyName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyAddress") {
            spCompanyAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyState") {
            spCompanyState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyCity") {
            spCompanyCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyZipcode") {
            spCompanyZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spCompanyWebsite") {
            spWebsite.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spBusinessPhone") {
            spBusinessPhone.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spEIN") {
            spEIN.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spNumberOfEmployees") {
            spNumberOfEmployees.text = data as? String
        } else {}
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

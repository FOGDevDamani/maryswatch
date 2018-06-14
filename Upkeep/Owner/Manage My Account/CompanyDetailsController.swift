//
//  CompanyDetailsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class CompanyDetailsController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var typeOfCompany: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var companyAddress: UITextField!
    @IBOutlet weak var companyState: UITextField!
    @IBOutlet weak var companyCity: UITextField!
    @IBOutlet weak var companyZipcode: UITextField!
    @IBOutlet weak var companyWebsite: UITextField!
    @IBOutlet weak var businessPhone: UITextField!
    @IBOutlet weak var EIN: UITextField!
    @IBOutlet weak var numberOfEmployees: UITextField!
    
    
    
    
    
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

       getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitCompanyDetails(_ sender: Any) {
        storeData()
    }
    
    
    

    func storeData() {
        defaults.set(typeOfCompany.text!, forKey: "typeOfCompany")
        defaults.set(companyName.text!, forKey: "companyName")
        defaults.set(companyAddress.text!, forKey: "companyAddress")
        defaults.set(companyState.text!, forKey: "companyState")
        defaults.set(companyCity, forKey: "companyCity")
        defaults.set(companyZipcode, forKey: "companyZipcode")
        defaults.set(companyWebsite, forKey: "companyWebsite")
        defaults.set(businessPhone.text!, forKey: "businessPhone")
        defaults.set(EIN.text, forKey: "EIN")
        defaults.set(numberOfEmployees.text, forKey: "numberOfEmployees")
        
    }
    
    
    func getData() {
        if let data = defaults.value(forKey: "typeOfCompany") {
            typeOfCompany.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyName") {
            companyName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyAddress") {
            companyAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyState") {
            companyState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyCity") {
            companyCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyZipcode") {
            companyZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "companyWebsite") {
            companyWebsite.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "businessPhone") {
           businessPhone.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "EIN") {
            EIN.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "numberOfEmployees") {
            numberOfEmployees.text = data as? String
        } else {}
    }

}

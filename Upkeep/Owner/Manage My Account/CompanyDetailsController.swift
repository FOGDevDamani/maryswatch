//
//  CompanyDetailsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitCompanyDetails(_ sender: Any) {
        storeData()
    }
    
    
    

    func storeData() {
        let ownerCompanyDetails = OwnerCompanyDetails()
        
        ownerCompanyDetails.setValue(self.typeOfCompany!.text, forKey: "typeOfOwner")
        ownerCompanyDetails.setValue(self.companyName!.text, forKey: "companyName")
        ownerCompanyDetails.setValue(self.companyAddress!.text, forKey: "companyAddress")
        ownerCompanyDetails.setValue(self.companyState!.text, forKey: "companyState")
        ownerCompanyDetails.setValue(self.companyCity!.text, forKey: "companyCity")
        ownerCompanyDetails.setValue(self.companyZipcode!.text, forKey: "typeOfOwner")
        ownerCompanyDetails.setValue(self.companyWebsite!.text, forKey: "companyWebsite")
        ownerCompanyDetails.setValue(self.businessPhone!.text, forKey: "businessPhone")
        ownerCompanyDetails.setValue(self.EIN!.text, forKey: "EIN")
        ownerCompanyDetails.setValue(self.numberOfEmployees!.text, forKey: "numberOfEmployes")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(ownerCompanyDetails)
                print("added \(ownerCompanyDetails.typeOfCompany) to Realm Database")
                print("added \(ownerCompanyDetails.companyName) to Realm Database")
                print("added \(ownerCompanyDetails.companyAddress) to Realm Database")
                print("added \(ownerCompanyDetails.companyState) to Realm Database")
                print("added \(ownerCompanyDetails.companyCity) to Realm Database")
                print("added \(ownerCompanyDetails.companyZipcode) to Realm Database")
                print("added \(ownerCompanyDetails.companyWebsite) to Realm Database")
                print("added \(ownerCompanyDetails.businessPhone) to Realm Database")
                print("added \(ownerCompanyDetails.EIN) to Realm Database")
                print("added \(ownerCompanyDetails.numberOfEmployees) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
    
    
    
    

}

//
//  ServiceProCompanyDetailsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func supSPCompanyDetailsData(_ sender: Any) {
        storeData()
    }
    
    
    
    

    func storeData() {
        let spCompanyDetails = SPCompanyDetails()
        
        spCompanyDetails.setValue(self.spCompanyDetails!.text, forKey: "spCompanyDetails")
        spCompanyDetails.setValue(self.spCompanyName!.text, forKey: "spCompanyName")
        spCompanyDetails.setValue(self.spCompanyAddress!.text, forKey: "spCompanyAddress")
        spCompanyDetails.setValue(self.spCompanyState!.text, forKey: "spCompanyState")
        spCompanyDetails.setValue(self.spCompanyCity!.text, forKey: "spCompanyCity")
        spCompanyDetails.setValue(self.spCompanyZipcode!.text, forKey: "spCompanyZipcode")
        spCompanyDetails.setValue(self.spWebsite!.text, forKey: "spWebsite")
        spCompanyDetails.setValue(self.spBusinessPhone!.text, forKey: "spBusinessPhone")
        spCompanyDetails.setValue(self.spEIN!.text, forKey: "spEIN")
        spCompanyDetails.setValue(self.spNumberOfEmployees!.text, forKey: "spNumberOfEmployees")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(spCompanyDetails)
                print("added \(spCompanyDetails.spCompanyDetails) to Realm Database")
                print("added \(spCompanyDetails.spCompanyName) to Realm Database")
                print("added \(spCompanyDetails.spCompanyAdress) to Realm Database")
                print("added \(spCompanyDetails.spCompanyState) to Realm Database")
                print("added \(spCompanyDetails.spCompanyCity) to Realm Database")
                print("added \(spCompanyDetails.spCompanyZipcode) to Realm Database")
                print("added \(spCompanyDetails.spWebsite) to Realm Database")
                print("added \(spCompanyDetails.spBusninessPhone) to Realm Database")
                print("added \(spCompanyDetails.spEIN) to Realm Database")
                print("added \(spCompanyDetails.spNumberOfEmployees) to Realm Database")
            }
        } catch {
            print(error)
        }
        
        
    }
    
    
   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

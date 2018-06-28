//
//  RenterProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func storeRenterProfileData(_ sender: Any) {
        storeData()
    }
    
    
    
    
    

    func storeData() {
        let renterProfile = RenterProfile()
        
        renterProfile.setValue(self.renterFirstName!.text, forKey: "renterFirstName")
        renterProfile.setValue(self.renterLastName!.text, forKey: "renterLastName")
        renterProfile.setValue(self.renterEmail!.text, forKey: "renterEmail")
        renterProfile.setValue(self.renterAddress!.text, forKey: "renterAddress")
        renterProfile.setValue(self.renterCellPhone!.text, forKey: "renterCellPhone")
        renterProfile.setValue(self.renterState!.text, forKey: "renterState")
        renterProfile.setValue(self.renterCity!.text, forKey: "renterCity")
        renterProfile.setValue(self.renterZipcode!.text, forKey: "renterZipcode")
        renterProfile.setValue(self.renterCounty!.text, forKey: "renterCounty")
        renterProfile.setValue(self.renterUsername!.text, forKey: "renterUsername")
        renterProfile.setValue(self.renterPassword!.text, forKey: "renterPassword")
        
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(renterProfile)
                print("added \(renterProfile.renterFirstName) to Realm Database")
                print("added \(renterProfile.renterLastName) to Realm Database")
                print("added \(renterProfile.renterEmail) to Realm Database")
                print("added \(renterProfile.renterAddress) to Realm Database")
                print("added \(renterProfile.renterCellPhone) to Realm Database")
                print("added \(renterProfile.renterState) to Realm Database")
                print("added \(renterProfile.renterCity) to Realm Database")
                print("added \(renterProfile.renterZipcode) to Realm Database")
                print("added \(renterProfile.renterCounty) to Realm Database")
                print("added \(renterProfile.renterUsername) to Realm Database")
                print("added \(renterProfile.renterPassword) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
}

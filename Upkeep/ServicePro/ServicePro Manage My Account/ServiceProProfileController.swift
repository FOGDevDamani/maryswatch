//
//  ServiceProProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func submitSPProfileData(_ sender: Any) {
        storeData()
    }
    
    
    func storeData() {
        let spProfile = SPProfile()
        
        spProfile.setValue(self.spTypeOfCompany!.text, forKey: "spTypeOfCompany")
        spProfile.setValue(self.spFirstName!.text, forKey: "spFirstName")
        spProfile.setValue(self.spLastName!.text, forKey: "spLastName")
        spProfile.setValue(self.spEmail!.text, forKey: "spEmail")
        spProfile.setValue(self.spCellPhone!.text, forKey: "spCellPhone")
        spProfile.setValue(self.spAddress!.text, forKey: "spAddress")
        spProfile.setValue(self.spState!.text, forKey: "spState")
        spProfile.setValue(self.spZipcode!.text, forKey: "spZipcode")
        spProfile.setValue(self.spCounty!.text, forKey: "spCounty")
        spProfile.setValue(self.spUsername!.text, forKey: "spUserName")
        spProfile.setValue(self.spPassword!.text, forKey: "spPassword")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(spProfile)
                print("added \(spProfile.spTypeOfCompany) to Realm Database")
                print("added \(spProfile.spFirstName) to Realm Database")
                print("added \(spProfile.spLastName) to Realm Database")
                print("added \(spProfile.spEmail) to Realm Database")
                print("added \(spProfile.spCellPhone) to Realm Database")
                print("added \(spProfile.spAddress) to Realm Database")
                print("added \(spProfile.spState) to Realm Database")
                print("added \(spProfile.spZipcode) to Realm Database")
                print("added \(spProfile.spCounty) to Realm Database")
                print("added \(spProfile.spUsername) to Realm Database")
                print("added \(spProfile.spPassword) to Realm Database")
            }
        } catch {
            print(error)
        }
    }

}

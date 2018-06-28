//
//  OwnerProfileController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/24/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitSettings(_ sender: Any) {
        storeData()
        
    }
    
    func storeData() {
        let ownerProfile = OwnerProfile()
        
        ownerProfile.setValue(self.typeOfOwner!.text, forKey: "typeOfOwner")
        ownerProfile.setValue(self.firstName!.text, forKey: "firstName")
        ownerProfile.setValue(self.lastName!.text, forKey: "lastName")
        ownerProfile.setValue(self.email!.text, forKey: "email")
        ownerProfile.setValue(self.cellPhone!.text, forKey: "cellPhone")
        ownerProfile.setValue(self.address!.text, forKey: "address")
        ownerProfile.setValue(self.state!.text, forKey: "state")
        ownerProfile.setValue(self.city!.text, forKey: "city")
        ownerProfile.setValue(self.zipCode!.text, forKey: "zipCode")
        ownerProfile.setValue(self.country!.text, forKey: "country")
        ownerProfile.setValue(self.userName!.text, forKey: "userName")
        ownerProfile.setValue(self.password!.text, forKey: "password")
        
        let realm = try! Realm()
        
        do {
        try realm.write {
            realm.add(ownerProfile)
            print("added \(ownerProfile.typeOfOwner) to Realm Database")
            print("added \(ownerProfile.firstName) to Realm Database")
            print("added \(ownerProfile.lastName) to Realm Database")
            print("added \(ownerProfile.email) to Realm Database")
            print("added \(ownerProfile.cellPhone) to Realm Database")
            print("added \(ownerProfile.address) to Realm Database")
            print("added \(ownerProfile.state) to Realm Database")
            print("added \(ownerProfile.city) to Realm Database")
            print("added \(ownerProfile.zipCode) to Realm Database")
            print("added \(ownerProfile.country) to Realm Database")
            print("added \(ownerProfile.userName) to Realm Database")
            print("added \(ownerProfile.password) to Realm Database")
            }
        } catch {
            print(error)
        }
        
    }
    

}

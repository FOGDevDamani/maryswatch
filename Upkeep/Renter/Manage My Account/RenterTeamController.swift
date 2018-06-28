//
//  RenterTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class RenterTeamController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var renterTeamAssign: UITextField!
    @IBOutlet weak var renterTeamFirstName: UITextField!
    @IBOutlet weak var renterTeamLastName: UITextField!
    @IBOutlet weak var renterTeamEmail: UITextField!
    @IBOutlet weak var renterTeamAddress: UITextField!
    @IBOutlet weak var renterTeamState: UITextField!
    @IBOutlet weak var renterTeamCity: UITextField!
    @IBOutlet weak var renterTeamZipcode: UITextField!
    @IBOutlet weak var renterTeamCellPhone: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addTeamMemberData(_ sender: Any) {
        storeData()
    }
    
    
    func storeData() {
        let renterTeam = RenterTeam()
        
        renterTeam.setValue(self.renterTeamAssign!.text, forKey: "renterTeamAssign")
        renterTeam.setValue(self.renterTeamFirstName!.text, forKey: "renterTeamFirstName")
        renterTeam.setValue(self.renterTeamLastName!.text, forKey: "renterTeamLastName")
        renterTeam.setValue(self.renterTeamEmail!.text, forKey: "renterTeamEmail")
        renterTeam.setValue(self.renterTeamAddress!.text, forKey: "renterTeamAddress")
        renterTeam.setValue(self.renterTeamState!.text, forKey: "renterTeamState")
        renterTeam.setValue(self.renterTeamCity!.text, forKey: "renterTeamCity")
        renterTeam.setValue(self.renterTeamZipcode!.text, forKey: "renterTeamZipcode")
        renterTeam.setValue(self.renterTeamCellPhone!.text, forKey: "renterTeamCellPhone")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(renterTeam)
                print("added \(renterTeam.renterTeamAssign) to Realm Database")
                print("added \(renterTeam.renterTeamFirstName) to Realm Database")
                print("added \(renterTeam.renterTeamLastName) to Realm Database")
                print("added \(renterTeam.renterTeamEmail) to Realm Database")
                print("added \(renterTeam.renterTeamAddress) to Realm Database")
                print("added \(renterTeam.renterTeamState) to Realm Database")
                print("added \(renterTeam.renterTeamCity) to Realm Database")
                print("added \(renterTeam.renterTeamZipcode) to Realm Database")
                print("added \(renterTeam.renterTeamCellPhone) to Realm Database")
                
                
            }
        } catch {
            print(error)
        }
        
    }

    

}

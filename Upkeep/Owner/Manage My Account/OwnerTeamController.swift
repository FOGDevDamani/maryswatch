//
//  OwnerTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerTeamController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var assignOwnerTeamMember: UITextField!
    @IBOutlet weak var ownerTeamMemberFirstName: UITextField!
    @IBOutlet weak var ownerTeamMemberLastName: UITextField!
    @IBOutlet weak var ownerTeamMemberEmail: UITextField!
    @IBOutlet weak var ownerTeamMemberAddress: UITextField!
    @IBOutlet weak var ownerTeamMemberState: UITextField!
    @IBOutlet weak var ownerTeamMemberCity: UITextField!
    @IBOutlet weak var ownerTeamMemberZipcode: UITextField!
    @IBOutlet weak var ownerTeamMemberCellPhone: UITextField!
    
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addTeamMemberSettings(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    func storeData() {
        let ownerTeam = OwnerTeam()
        
        ownerTeam.setValue(self.assignOwnerTeamMember!.text, forKey: "assignOwnerTeamMember")
        ownerTeam.setValue(self.ownerTeamMemberFirstName!.text, forKey: "ownerTeamMemberFirstName")
        ownerTeam.setValue(self.ownerTeamMemberLastName!.text, forKey: "ownerTeamMemberLastName")
        ownerTeam.setValue(self.ownerTeamMemberEmail!.text, forKey: "ownerTeamMemberEmail")
        ownerTeam.setValue(self.ownerTeamMemberAddress!.text, forKey: "ownerTeamMemberAddress")
        ownerTeam.setValue(self.ownerTeamMemberState!.text, forKey: "ownerTeamMemberState")
        ownerTeam.setValue(self.ownerTeamMemberCity!.text, forKey: "ownerTeamMemberCity")
        ownerTeam.setValue(self.ownerTeamMemberZipcode!.text, forKey: "ownerTeamMemberZipcode")
        ownerTeam.setValue(self.ownerTeamMemberCellPhone!.text, forKey: "ownerTeamMemberCellPhone")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(ownerTeam)
                print("added \(ownerTeam.assignOwnerTeamMember) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberFirstName) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberLastName) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberEmail) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberAddress) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberState) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberCity) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberZipcode) to Realm Database")
                print("added \(ownerTeam.ownerTeamMemberCellPhone) to Realm Database")
            }
        } catch {
            print(error)
        }
    }


}

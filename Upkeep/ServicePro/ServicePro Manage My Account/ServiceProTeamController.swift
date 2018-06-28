//
//  ServiceProTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProTeamController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var spAssignTeamMember: UITextField!
    @IBOutlet weak var spTeamMemberFirstName: UITextField!
    @IBOutlet weak var spTeamMemberLastName: UITextField!
    @IBOutlet weak var spTeamMemberEmail: UITextField!
    @IBOutlet weak var spTeamMemberAddress: UITextField!
    @IBOutlet weak var spTeamMemberState: UITextField!
    @IBOutlet weak var spTeamMemberCity: UITextField!
    @IBOutlet weak var spTeamMemberZipcode: UITextField!
    @IBOutlet weak var spTeamMemberCellPhone: UITextField!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func storeData() {
        let spTeam = SPTeam()
        
        spTeam.setValue(self.spAssignTeamMember!.text, forKey: "spAssignTeamMember")
        spTeam.setValue(self.spTeamMemberFirstName!.text, forKey: "spTeamMemberFirstName")
        spTeam.setValue(self.spTeamMemberLastName!.text, forKey: "spTeamMemberLastName")
        spTeam.setValue(self.spTeamMemberEmail!.text, forKey: "spTeamMemberEmail")
        spTeam.setValue(self.spTeamMemberAddress!.text, forKey: "spTeamMemberAddress")
        spTeam.setValue(self.spTeamMemberState!.text, forKey: "spTeamMemberState")
        spTeam.setValue(self.spTeamMemberCity!.text, forKey: "spTeamMemberCity")
        spTeam.setValue(self.spTeamMemberZipcode!.text, forKey: "spTeamMemberZipcode")
        spTeam.setValue(self.spTeamMemberCellPhone.text, forKey: "spTeamMemberCellPhone")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(spTeam)
                print("added \(spTeam.spAssignTeamMember) to Realm Database")
                print("added \(spTeam.spTeamMemberFirstName) to Realm Database")
                print("added \(spTeam.spTeamMemberLastName) to Realm Database")
                print("added \(spTeam.spTeamMemberEmail) to Realm Database")
                print("added \(spTeam.spTeamMemberAddress) to Realm Database")
                print("added \(spTeam.spTeamMemberState) to Realm Database")
                print("added \(spTeam.spTeamMemberCity) to Realm Database")
                print("added \(spTeam.spTeamMemberZipcode) to Realm Database")
                print("added \(spTeam.spTeamMemberCellPhone) to Realm Database")
            }
        } catch {
            print(error)
        }
        
    }
    
    
}

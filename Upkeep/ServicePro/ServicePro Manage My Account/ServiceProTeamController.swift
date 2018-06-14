//
//  ServiceProTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

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
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func storeData() {
        defaults.set(spAssignTeamMember.text!, forKey: "spAssignTeamMember")
        defaults.set(spTeamMemberFirstName.text!, forKey: "spTMFirstName")
        defaults.set(spTeamMemberLastName.text!, forKey: "spTMLastName")
        defaults.set(spTeamMemberEmail.text!, forKey: "spTMEmail")
        defaults.set(spTeamMemberAddress.text!, forKey: "spTMAddress")
        defaults.set(spTeamMemberState.text!, forKey: "spTMState")
        defaults.set(spTeamMemberCity.text!, forKey: "spTMCity")
        defaults.set(spTeamMemberZipcode.text!, forKey: "spTMZipcode")
        defaults.set(spTeamMemberCellPhone.text!, forKey: "spTMCellPhone")
        
    }
    
    
    func getData() {
        if let data = defaults.value(forKey: "spAssignTeamMember") {
            spAssignTeamMember.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMFirstName") {
            spTeamMemberFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMLastName") {
            spTeamMemberLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMEmail") {
            spTeamMemberEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMAddress") {
            spTeamMemberAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMState") {
            spTeamMemberState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMCity") {
            spTeamMemberCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMZipcode") {
            spTeamMemberZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "spTMCellPhone") {
            spTeamMemberCellPhone.text = data as? String
        } else {}
    }
    
}

//
//  OwnerTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

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
    
    
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addTeamMemberSettings(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    func storeData() {
        defaults.set(assignOwnerTeamMember.text!, forKey: "assigmOwnerTM")
        defaults.set(ownerTeamMemberFirstName.text!, forKey: "OTMFirstName")
        defaults.set(ownerTeamMemberLastName.text!, forKey: "OTMLastName")
        defaults.set(ownerTeamMemberEmail.text!, forKey: "OTMEmail")
        defaults.set(ownerTeamMemberAddress.text!, forKey: "OTMAddress")
        defaults.set(ownerTeamMemberState.text!, forKey: "OTMState")
        defaults.set(ownerTeamMemberCity.text!, forKey: "OTMCity")
        defaults.set(ownerTeamMemberZipcode.text!, forKey: "OTMZipcode")
        defaults.set(ownerTeamMemberCellPhone.text!, forKey: "OTMCellPhone")
        
    }
    
    
    func getData() {
        if let data = defaults.value(forKey: "assinOwnerTM") {
            assignOwnerTeamMember.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMFirstName") {
            ownerTeamMemberFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMLastName") {
            ownerTeamMemberLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMEmail") {
            ownerTeamMemberEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMAddress") {
            ownerTeamMemberAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMState") {
            ownerTeamMemberState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMCity") {
            ownerTeamMemberCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMZipcode") {
            ownerTeamMemberZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OTMCellPhone") {
            ownerTeamMemberCellPhone.text = data as? String
        } else {}
    }
    
    
    
    
    
    
    
    


}

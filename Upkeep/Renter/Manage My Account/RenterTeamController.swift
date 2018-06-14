//
//  RenterTeamController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

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

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addTeamMemberData(_ sender: Any) {
        storeData()
    }
    
    
    func storeData() {
        defaults.set(renterTeamAssign.text!, forKey: "renterTeamsAssign")
        defaults.set(renterTeamFirstName.text!, forKey: "RTFirstName")
        defaults.set(renterTeamLastName.text!, forKey: "RTLastName")
        defaults.set(renterTeamEmail.text!, forKey: "RTEMail")
        defaults.set(renterTeamAddress.text!, forKey: "RTAddress")
        defaults.set(renterTeamState.text!, forKey: "RTState")
        defaults.set(renterTeamCity.text!, forKey: "RTCity")
        defaults.set(renterTeamZipcode.text!, forKey: "RTZipcode")
        defaults.set(renterTeamCellPhone.text!, forKey: "RTCellPhone")
    }
    
    func getData() {
        if let data = defaults.value(forKey: "renterTeamAssign") {
            renterTeamAssign.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTFirstName") {
            renterTeamFirstName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTLastName") {
            renterTeamLastName.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTEmail") {
            renterTeamEmail.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTAddress") {
            renterTeamAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTState") {
            renterTeamState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTCity") {
            renterTeamCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTZipcode") {
            renterTeamZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "RTCellPhone") {
            renterTeamCellPhone.text = data as? String
        } else {}
        
    }
    
    

}

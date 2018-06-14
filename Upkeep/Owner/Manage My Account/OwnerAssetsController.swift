//
//  OwnerAssetsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerAssetsController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ownerTypeOfProperty: UITextField!
    @IBOutlet weak var ownerPropertyAddress: UITextField!
    @IBOutlet weak var ownerPropertyState: UITextField!
    @IBOutlet weak var ownerPropertyCity: UITextField!
    @IBOutlet weak var ownerPropertyZipcode: UITextField!
    @IBOutlet weak var ownerPropertyCounty: UITextField!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func addPropertySettings(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    
    func storeData() {
        defaults.set(ownerTypeOfProperty.text!, forKey: "OTypeOfProperty")
        defaults.set(ownerPropertyAddress.text!, forKey: "OPropertyAddress")
        defaults.set(ownerPropertyState.text!, forKey: "OPropertyState")
        defaults.set(ownerPropertyCity.text!, forKey: "OPropertyCity")
        defaults.set(ownerPropertyZipcode.text!, forKey: "OPropertyZipcode")
        defaults.set(ownerPropertyCounty.text!, forKey: "OPropertyCounty")
        
    }
    
    func getData() {
        if let data = defaults.value(forKey: "OTypeOfProperty") {
            ownerTypeOfProperty.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OPropertyAddress") {
            ownerPropertyAddress.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OPropertyState") {
            ownerPropertyState.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OPropertyCity") {
            ownerPropertyCity.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OPropertyZipcode") {
            ownerPropertyZipcode.text = data as? String
        } else {}
        
        if let data = defaults.value(forKey: "OPropertyCounty") {
            ownerPropertyCounty.text = data as? String
        } else {}
    }
    

    

}

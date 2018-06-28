//
//  ServiceProCustomersController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/12/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProCustomersController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var spCustomerFirstName: UITextField!
    @IBOutlet weak var spCustomerLastName: UITextField!
    @IBOutlet weak var spCustomerEmail: UITextField!
    @IBOutlet weak var spCustomerAddress: UITextField!
    @IBOutlet weak var spCustomerState: UITextField!
    @IBOutlet weak var spCustomerCity: UITextField!
    @IBOutlet weak var spCustomerZipcode: UITextField!
    @IBOutlet weak var spCustomerCounty: UITextField!
    @IBOutlet weak var spCustomerCellPhone: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func spAddCustomerData(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    
    
    func storeData() {
        let spCustomers = SPCustomers()
        
        spCustomers.setValue(self.spCustomerFirstName!.text, forKey: "spCustomerFirstName")
        spCustomers.setValue(self.spCustomerLastName!.text, forKey: "spCustomerLastName")
        spCustomers.setValue(self.spCustomerEmail!.text, forKey: "spCustomerEmail")
        spCustomers.setValue(self.spCustomerAddress!.text, forKey: "spCustomerAddress")
        spCustomers.setValue(self.spCustomerState!.text, forKey: "spCustomerState")
        spCustomers.setValue(self.spCustomerCity!.text, forKey: "spCustomerCity")
        spCustomers.setValue(self.spCustomerZipcode!.text, forKey: "spCustomerZipcode")
        spCustomers.setValue(self.spCustomerCounty!.text, forKey: "spCustomerCounty")
        spCustomers.setValue(self.spCustomerCellPhone!.text, forKey: "spCustomerCcellPhone")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(spCustomers)
                print("added \(spCustomers.spCustomerFirstName) to Realm Database")
                print("added \(spCustomers.spCustomerLastName) to Realm Database")
                print("added \(spCustomers.spCustomerEmail) to Realm Database")
                print("added \(spCustomers.spCustomerAddress) to Realm Database")
                print("added \(spCustomers.spCustomerState) to Realm Database")
                print("added \(spCustomers.spCustomerCity) to Realm Database")
                print("added \(spCustomers.spCustomerZipcode) to Realm Database")
                print("added \(spCustomers.spCustomerCounty) to Realm Database")
                print("added \(spCustomers.spCustomerCellPhone) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
    
    

}

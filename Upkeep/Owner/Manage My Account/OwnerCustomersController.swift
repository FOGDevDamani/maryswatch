//
//  OwnerCustomersController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerCustomersController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ownerCustomerFirstName: UITextField!
    @IBOutlet weak var ownerCustomerLastName: UITextField!
    @IBOutlet weak var ownerCustomerEmail: UITextField!
    @IBOutlet weak var ownerCustomerAddress: UITextField!
    @IBOutlet weak var ownerCustomerState: UITextField!
    @IBOutlet weak var ownerCustomerCity: UITextField!
    @IBOutlet weak var ownerCustomerZipcode: UITextField!
    @IBOutlet weak var ownerCustomerCounty: UITextField!
    @IBOutlet weak var ownerCustomerCellPhone: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func addCustomerSettings(_ sender: Any) {
        storeData()
    }
    
    
    
    func storeData() {
        let ownerCustomers = OwnerCustomers()
        
        ownerCustomers.setValue(self.ownerCustomerFirstName!.text, forKey: "ownerCustomerFirstName")
        ownerCustomers.setValue(self.ownerCustomerLastName!.text, forKey: "ownerCustomerLastName")
        ownerCustomers.setValue(self.ownerCustomerEmail!.text, forKey: "ownerCustomerEmail")
        ownerCustomers.setValue(self.ownerCustomerAddress!.text, forKey: "ownerCustomerAddress")
        ownerCustomers.setValue(self.ownerCustomerState!.text, forKey: "ownerCustomerState")
        ownerCustomers.setValue(self.ownerCustomerCity!.text, forKey: "ownerCustomerCity")
        ownerCustomers.setValue(self.ownerCustomerZipcode!.text, forKey: "ownerCustomerZipcode")
        ownerCustomers.setValue(self.ownerCustomerCounty!.text, forKey: "ownerCustomerCounty")
        ownerCustomers.setValue(self.ownerCustomerCellPhone!.text, forKey: "ownerCustomerCellPhone")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(ownerCustomers)
                print("added \(ownerCustomers.ownerCustomerFirstName) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerLastName) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerEmail) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerAddress) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerState) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerCity) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerZipcode) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerCounty) to Realm Database")
                print("added \(ownerCustomers.ownerCustomerCellPhone) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
    
    
    

   
    

}

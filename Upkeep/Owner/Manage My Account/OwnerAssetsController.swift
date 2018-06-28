//
//  OwnerAssetsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/10/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerAssetsController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ownerTypeOfProperty: UITextField!
    @IBOutlet weak var ownerPropertyAddress: UITextField!
    @IBOutlet weak var ownerPropertyState: UITextField!
    @IBOutlet weak var ownerPropertyCity: UITextField!
    @IBOutlet weak var ownerPropertyZipcode: UITextField!
    @IBOutlet weak var ownerPropertyCounty: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func addPropertySettings(_ sender: Any) {
        storeData()
    }
    
    
    
    
    
    
    
    func storeData() {
        let ownerAssets = OwnerAssets()
        
        ownerAssets.setValue(self.ownerTypeOfProperty!.text, forKey: "ownerTypeOfProperty")
        ownerAssets.setValue(self.ownerPropertyAddress!.text, forKey: "ownerPropertyAddress")
        ownerAssets.setValue(self.ownerPropertyState!.text, forKey: "ownerPropertyState")
        ownerAssets.setValue(self.ownerPropertyCity!.text, forKey: "ownerPropertyCity")
        ownerAssets.setValue(self.ownerPropertyZipcode.text, forKey: "ownerPropertyZipcode")
        ownerAssets.setValue(self.ownerPropertyCounty!.text, forKey: "ownerPropertyCounty")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(ownerAssets)
                print("added \(ownerAssets.ownerTypeOfProperty) to Realm Database")
                print("added \(ownerAssets.ownerPropertyAddress) to Realm Database")
                print("added \(ownerAssets.ownerPropertyState) to Realm Database")
                print("added \(ownerAssets.ownerPropertyCity) to Realm Database")
                print("added \(ownerAssets.ownerPropertyZipcode) to Realm Database")
                print("added \(ownerAssets.ownerPropertyCounty) to Realm Database")
            }
        } catch {
            print(error)
        }
    }

    

}

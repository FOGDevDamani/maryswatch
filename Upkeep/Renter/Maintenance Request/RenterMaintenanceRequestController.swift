//
//  RenterMaintenanceRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/22/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class RenterMaintenanceRequestController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var requestPriority: UITextField!
    @IBOutlet weak var requestAddress: UITextField!
    @IBOutlet weak var room: UITextField!
    @IBOutlet weak var problemDescription: UITextView!
    @IBOutlet weak var preferredTimeAndDate: UITextField!
    @IBOutlet weak var preferredContactNumber: UITextField!
    @IBOutlet weak var previouslyReported: UISwitch!
    @IBOutlet weak var pets: UISwitch!
    @IBOutlet weak var authorizeEntry: UISwitch!
    @IBOutlet weak var requestType: UITextField!
    
    
    @IBOutlet weak var addPlusButton: UIButton!
    @IBOutlet weak var manageMyAccount: UIView!
    @IBOutlet weak var closeButton: UIButton!
    
    var defaults = UserDefaults.standard
    var theBossOwner = TheBossOwnerController()
    
    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        manageMyAccount.isHidden = false
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func submitRenterRequest(_ sender: Any) {
        let alert = UIAlertController(title: "Maintenance Request Received: Job# 1", message: "Your maintenance request has been received. Your preferred service provider has been contacted. Someone will get back to you shortly", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: {action in
            alert.dismiss(animated: false, completion: nil)
        }))
        
        self.present(alert, animated: true)
        
        saveRequest()
    }
    
    
    func saveRequest() {
        let newRequest = RenterRequest()
        newRequest.setValue(self.requestPriority!.text, forKey: "requestPriority")
        newRequest.setValue(self.requestAddress!.text, forKey: "requestAddress")
        newRequest.setValue(self.room!.text, forKey: "room")
        newRequest.setValue(self.problemDescription!.text, forKey: "problemDescription")
        newRequest.setValue(self.preferredTimeAndDate!.text, forKey: "preferredTimeAndDate")
        newRequest.setValue(self.preferredContactNumber!.text, forKey: "preferredContactNumber")
        newRequest.setValue(self.previouslyReported!.isOn, forKey: "previouslyReported")
        newRequest.setValue(self.pets!.isOn, forKey: "pets")
        newRequest.setValue(self.authorizeEntry.isOn, forKey: "authorizedEntry")
        newRequest.setValue(self.requestType!.text, forKey: "requestType")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(newRequest)
                print("added \(newRequest.requestAddress) to Realm Database")
                print("added \(newRequest.previouslyReported) to Realm Database")
                print("added \(newRequest.preferredTimeAndDate) to Realm Database")
                print("added \(newRequest.pets) to Realm Database")
                print("added \(newRequest.authorizedEntry) to Realm Database")
                print("added \(newRequest.preferredContactNumber) to Realm Database")
                print("added \(newRequest.requestPriority) to Realm Database")
                print("added \(newRequest.room) to Realm Database")
                print("added \(newRequest.problemDescription) to Realm Database")
              
                
                self.requestPriority!.text = ""
                self.requestAddress!.text = ""
                self.room!.text = ""
                self.problemDescription!.text = ""
                self.preferredTimeAndDate!.text = ""
                self.preferredContactNumber!.text = ""
                self.previouslyReported!.isOn = false
                self.pets!.isOn = false
                self.authorizeEntry!.isOn = false
                self.requestType!.text = ""
            }
        } catch {
            print(error)
        }
    }
    
}

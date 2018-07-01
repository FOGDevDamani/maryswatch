//
//  ServiceProMaintenanceAssessmentController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/19/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProMaintenanceAssessmentController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var serviceProAssessmentAddress: UITextField!
    @IBOutlet weak var serviceProAssessmentEmergency: UISwitch!
    @IBOutlet weak var serviceProAssessmentType: UITextField!
    @IBOutlet weak var serviceProAssessmentRoom: UITextField!
    @IBOutlet weak var serviceProAssessmentLaborType: UITextField!
    @IBOutlet weak var serviceProAssessmentNumberOfLaborers: UITextField!
    @IBOutlet weak var serviceProNumberOfHours: UITextField!
    @IBOutlet weak var serviceProAssessmentRate: UITextField!
    @IBOutlet weak var serviceProAssessmentAmount: UITextField!
    @IBOutlet weak var serviceProAssessmentAdditionalCosts: UISwitch!
    @IBOutlet weak var serviceProAssessmentDescription: UITextView!
    @IBOutlet weak var serviceProAssessmentTimeFrameToComplete: UITextField!
    @IBOutlet weak var serviceProAssessmentEstimatedStartDate: UITextField!
    @IBOutlet weak var serviceProAssessmentACType: UITextField!
    @IBOutlet weak var serviceProAssessmentACAmount: UITextField!
    @IBOutlet weak var serviceProAssessmentACInternalCost: UISwitch!
    @IBOutlet weak var serviceProAssessmentACVisibleToCustomer: UISwitch!
    @IBOutlet weak var serviceProAssessmentACDetails: UITextView!
    
    
    
    
    
    
    @IBOutlet weak var additionalCosts: UIView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func turnAdditionalCostsOn(_ sender: Any) {
        if serviceProAssessmentAdditionalCosts.isOn == true {
            additionalCosts.isHidden = false
        }
    }
    
    @IBAction func turnAdditionalCostsOff(_ sender: Any) {
        additionalCosts.isHidden = true
    }
    
    
    
    @IBAction func submitAssessment(_ sender: Any) {
        saveRequest()
    }
    
    func saveRequest() {
        let newSPRequest = SPRequest()
        newSPRequest.setValue(self.serviceProAssessmentAddress!.text, forKey: "spAssessmentAddress")
        newSPRequest.setValue(self.serviceProAssessmentEmergency!.isOn, forKey: "spAssessmentEmergency")
        newSPRequest.setValue(self.serviceProAssessmentType!.text, forKey: "spAssessmentType")
        newSPRequest.setValue(self.serviceProAssessmentRoom!.text, forKey: "spAssessmentRoom")
        newSPRequest.setValue(self.serviceProAssessmentLaborType!.text, forKey: "spAssessmentLaborType")
        newSPRequest.setValue(self.serviceProAssessmentNumberOfLaborers!.text, forKey: "spAssessmentNumberOfLaborers")
        newSPRequest.setValue(self.serviceProNumberOfHours!.text, forKey: "spAssessmentNumberOfHours")
        newSPRequest.setValue(self.serviceProAssessmentRate!.text, forKey: "spAssessmentRate")
        newSPRequest.setValue(self.serviceProAssessmentAmount!.text, forKey: "spAssessmentAmount")
        newSPRequest.setValue(self.serviceProAssessmentAdditionalCosts!.isOn, forKey: "spAssessmentAdditionalCosts")
        newSPRequest.setValue(self.serviceProAssessmentDescription!.text, forKey: "spAssessmentDescription")
        newSPRequest.setValue(self.serviceProAssessmentTimeFrameToComplete!.text, forKey: "spAssessmentTimeFrameToComplete")
        newSPRequest.setValue(self.serviceProAssessmentEstimatedStartDate!.text, forKey: "spAssessmentEstimatedStartDate")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(newSPRequest)
                print("added \(newSPRequest.spAssessmentAddress) to Realm Database")
                 print("added \(newSPRequest.spAssessmentEmergency) to Realm Database")
                 print("added \(newSPRequest.spAssessmentType) to Realm Database")
                 print("added \(newSPRequest.spAssessmentRoom) to Realm Database")
                 print("added \(newSPRequest.spAssessmentLaborType) to Realm Database")
                 print("added \(newSPRequest.spAssessmentNumberOfLaborers) to Realm Database")
                 print("added \(newSPRequest.spAssessmentNumberOfHours) to Realm Database")
                 print("added \(newSPRequest.spAssessmentRate) to Realm Database")
                 print("added \(newSPRequest.spAssessmentAmount) to Realm Database")
                 print("added \(newSPRequest.spAssessmentAdditionalCosts) to Realm Database")
                 print("added \(newSPRequest.spAssessmentDescription) to Realm Database")
                 print("added \(newSPRequest.spAssessmentTimeFrameToComplete) to Realm Database")
                 print("added \(newSPRequest.spAssessmentEstimatedStartDate) to Realm Database")
                
            }
        } catch {
            print(error)
        }
    }
    
    
    
    @IBAction func addToAssessment(_ sender: Any) {
        let additionalCosts = SPRequest()
        additionalCosts.setValue(serviceProAssessmentACType!.text, forKey: "spAssessementACType")
        additionalCosts.setValue(serviceProAssessmentACAmount!.text, forKey: "spAssessmentACAmount")
        additionalCosts.setValue(serviceProAssessmentACDetails!.text, forKey: "spAssessmentACDetails")
        additionalCosts.setValue(serviceProAssessmentACInternalCost!.isOn, forKey: "spAssessmentACInternalCosts")
        additionalCosts.setValue(serviceProAssessmentACVisibleToCustomer!.isOn, forKey: "spAssessmentACVisibleToCustomer")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(additionalCosts)
                print("added \(additionalCosts.spAssessmentACType) to Realm Database")
                print("added \(additionalCosts.spAssessmentACAmount) to Realm Database")
                print("added \(additionalCosts.spAssessmentACDetails) to Realm Database")
                print("added \(additionalCosts.spAssessmentACInternalCost) to Realm Database")
                print("added \(additionalCosts.spAssessmentACVisibleToCustomer) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
    
    
    

    

}

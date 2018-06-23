//
//  ServiceProMaintenanceAssessmentController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/19/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

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
    
    
    var defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitAssessment(_ sender: Any) {
        saveRequest()
    }
    
    func saveRequest() {
        defaults.set(serviceProAssessmentAddress.text!, forKey: "spAssessmentAddress")
        defaults.set(serviceProAssessmentEmergency.isOn, forKey: "spAssessmentEmergency")
        defaults.set(serviceProAssessmentType.text!, forKey: "spAssessmentType")
        defaults.set(serviceProAssessmentRoom.text!, forKey: "spAssessmentRoom")
        defaults.set(serviceProAssessmentLaborType.text!, forKey: "spAssessmentLaborType")
        defaults.set(serviceProAssessmentNumberOfLaborers.text!, forKey: "spAssessmentNumberOfLaborers")
        defaults.set(serviceProNumberOfHours.text!, forKey: "spNumberOfHours")
        defaults.set(serviceProAssessmentRate.text!, forKey: "spAssessmentRate")
        defaults.set(serviceProAssessmentAmount.text!, forKey: "spAssessmentAmount")
        defaults.set(serviceProAssessmentDescription.text!, forKey: "spAssessmentDescription")
        defaults.set(serviceProAssessmentTimeFrameToComplete.text!, forKey: "spAssessmentTimeFrameToComplete")
        defaults.set(serviceProAssessmentEstimatedStartDate.text!, forKey: "spAssessmentEstimatedStartDate")
    }
    
    
    
    

    

}

//
//  OwnerMessagesController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerMessagesController: UIViewController {
    
    @IBOutlet weak var manageMyApps: UIView!
    @IBOutlet weak var manageMyAccount: UIView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    
    
    
    
    
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        manageMyApps.isHidden = false
    }
    @IBAction func menuClose(_ sender: Any) {
        manageMyApps.isHidden = true
    }
    @IBAction func accountButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = false
    }
    @IBAction func cancelButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = true
    }
    
    
    
}

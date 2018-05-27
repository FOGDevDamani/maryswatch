//
//  LandingPageController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/15/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class LandingPageController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyBoard.instantiateViewController(withIdentifier: "UserAlertController")
        
        self.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

//
//  Model.swift
//  maryswatch
//
//  Created by Damani Turner on 6/14/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

struct RenterRequest {
    let address: String
    let reported: Bool
    let preferredTimeAndDate: NSDate
    let pets: Bool
    let authorizedEntry: Bool
    let contactNumber: String
    let priority: String
    let room:Int
    let description: String
}

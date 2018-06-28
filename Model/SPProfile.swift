//
//  SPProfile.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPProfile: Object {
    dynamic var spTypeOfCompany = ""
    dynamic var spFirstName = ""
    dynamic var spLastName = ""
    dynamic var spEmail = ""
    dynamic var spAddress = ""
    dynamic var spCellPhone = ""
    dynamic var spState = ""
    dynamic var spCity = ""
    dynamic var spZipcode = ""
    dynamic var spCounty = ""
    dynamic var spUsername = ""
    dynamic var spPassword = ""
    
}


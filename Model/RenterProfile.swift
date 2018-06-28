//
//  UserProfile.swift
//  maryswatch
//
//  Created by Damani Turner on 6/26/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class RenterProfile: Object {
    dynamic var renterFirstName = ""
    dynamic var renterLastName = ""
    dynamic var renterEmail = ""
    dynamic var renterAddress = ""
    dynamic var renterCellPhone = ""
    dynamic var renterState = ""
    dynamic var renterCity = ""
    dynamic var renterZipcode = ""
    dynamic var renterCounty = ""
    dynamic var renterUsername = ""
    dynamic var renterPassword = ""
   
}

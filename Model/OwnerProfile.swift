//
//  OwnerProfile.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerProfile: Object {
    dynamic var typeOfOwner = ""
    dynamic var firstName = ""
    dynamic var lastName = ""
    dynamic var email = ""
    dynamic var cellPhone = ""
    dynamic var address = ""
    dynamic var state = ""
    dynamic var city = ""
    dynamic var zipCode = ""
    dynamic var country = ""
    dynamic var userName = ""
    dynamic var password = ""
}

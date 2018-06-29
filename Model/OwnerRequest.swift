//
//  OwnerRequest.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerRequest: Object {
    dynamic var ownerRequestId: String = UUID().uuidString
    dynamic var ownerAddress = ""
    dynamic var ownerPrevioslyReported = false
    dynamic var ownerRequestType = ""
    dynamic var ownerUnitNumber = 0
    dynamic var ownerRoom = ""
    dynamic var ownerProblemDescription = ""
    dynamic var ownerPreferredTimeAndDate = ""
    dynamic var ownerPets = false
    dynamic var ownerAuthorizedEntry = false
    dynamic var ownerPreferredContactNumber = ""
    
    override static func primaryKey() -> String {
        return "ownerRequestId"
    }
    
}

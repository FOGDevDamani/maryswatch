//
//  SPMaterialsRequest.swift
//  maryswatch
//
//  Created by Damani Turner on 6/29/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPMaterialsRequest: Object {
    dynamic var requestId: String = UUID().uuidString
    dynamic var materialDescription = ""
    dynamic var materialQuantity = 0
    dynamic var materialAmount = 0
    dynamic var materialTotal = 0
    
    override static func primaryKey() -> String {
        return "requestId"
    }
    
}

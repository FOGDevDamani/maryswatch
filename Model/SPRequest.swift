//
//  SPRequest.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPRequest: Object {
    dynamic var spRequestId: String = UUID().uuidString
    dynamic var spAssessmentAddress = ""
    dynamic var spAssessmentEmergency = false
    dynamic var spAssessmentRoom = ""
    dynamic var spAssessmentLaborType = ""
    dynamic var spAssessmentNumberOfLaborers = 0
    dynamic var spAssessmentNumberOfHours = 0
    dynamic var spAssessmentRate = ""
    dynamic var spAssessmentAmount = 0
    dynamic var spAssessmentDescription = ""
    dynamic var spAssessmentTimeFrameToComplete = ""
    dynamic var spAssessmentEstimatedStartDate = ""
    dynamic var spAssessmentAdditionalCosts = false
    dynamic var spAssessmentACType = ""
    dynamic var spAssessmentACAmount = 0
    dynamic var spAssessmentACDetails = ""
    dynamic var spAssessmentACInternalCost = false
    dynamic var spAssessmentACVisibleToCustomer = false
    
    override static func primaryKey() -> String {
        return "requestId"
    }
    
}

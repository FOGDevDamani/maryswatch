//
//  SPCompanyDetails.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPCompanyDetails: Object {
    dynamic var spCompanyDetails = ""
    dynamic var spCompanyName = ""
    dynamic var spCompanyAdress = ""
    dynamic var spCompanyState = ""
    dynamic var spCompanyCity = ""
    dynamic var spCompanyZipcode = ""
    dynamic var spWebsite = ""
    dynamic var spBusninessPhone = ""
    dynamic var spEIN = ""
    dynamic var spNumberOfEmployees = ""
}

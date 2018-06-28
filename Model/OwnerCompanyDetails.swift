//
//  OwnerCompanyDetails.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerCompanyDetails: Object {
    dynamic var typeOfCompany = ""
    dynamic var companyName = ""
    dynamic var companyAddress = ""
    dynamic var companyState = ""
    dynamic var companyCity = ""
    dynamic var companyZipcode = ""
    dynamic var companyWebsite = ""
    dynamic var businessPhone = ""
    dynamic var EIN = ""
    dynamic var numberOfEmployees = ""
}

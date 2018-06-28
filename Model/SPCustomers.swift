//
//  SPCustomers.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPCustomers: Object {
    dynamic var spCustomerFirstName = ""
    dynamic var spCustomerLastName = ""
    dynamic var spCustomerEmail = ""
    dynamic var spCustomerAddress = ""
    dynamic var spCustomerState = ""
    dynamic var spCustomerCity = ""
    dynamic var spCustomerZipcode = ""
    dynamic var spCustomerCounty = ""
    dynamic var spCustomerCellPhone = ""
}

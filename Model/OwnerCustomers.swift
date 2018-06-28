//
//  OwnerCustomers.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerCustomers: Object {
    dynamic var ownerCustomerFirstName = ""
    dynamic var ownerCustomerLastName = ""
    dynamic var ownerCustomerEmail = ""
    dynamic var ownerCustomerAddress = ""
    dynamic var ownerCustomerState = ""
    dynamic var ownerCustomerCity = ""
    dynamic var ownerCustomerZipcode = ""
    dynamic var ownerCustomerCounty = ""
    dynamic var ownerCustomerCellPhone = ""
}

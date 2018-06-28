//
//  OwnerAssets.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerAssets: Object {
    dynamic var ownerTypeOfProperty = ""
    dynamic var ownerPropertyAddress = ""
    dynamic var ownerPropertyState = ""
    dynamic var ownerPropertyCity = ""
    dynamic var ownerPropertyZipcode = ""
    dynamic var ownerPropertyCounty = ""
}

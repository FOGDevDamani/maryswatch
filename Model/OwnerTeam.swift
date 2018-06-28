//
//  OwnerTeam.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class OwnerTeam: Object {
    dynamic var assignOwnerTeamMember = ""
    dynamic var ownerTeamMemberFirstName = ""
    dynamic var ownerTeamMemberLastName = ""
    dynamic var ownerTeamMemberEmail = ""
    dynamic var ownerTeamMemberAddress = ""
    dynamic var ownerTeamMemberState = ""
    dynamic var ownerTeamMemberCity = ""
    dynamic var ownerTeamMemberZipcode = ""
    dynamic var ownerTeamMemberCellPhone = ""
}

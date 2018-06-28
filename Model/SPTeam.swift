//
//  SPTeam.swift
//  maryswatch
//
//  Created by Damani Turner on 6/27/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class SPTeam: Object {
    dynamic var spAssignTeamMember = ""
    dynamic var spTeamMemberFirstName = ""
    dynamic var spTeamMemberLastName = ""
    dynamic var spTeamMemberEmail = ""
    dynamic var spTeamMemberAddress = ""
    dynamic var spTeamMemberState = ""
    dynamic var spTeamMemberCity = ""
    dynamic var spTeamMemberZipcode = ""
    dynamic var spTeamMemberCellPhone = ""
}

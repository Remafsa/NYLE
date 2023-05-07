//
//  Owners.swift
//  NYLE
//
//  Created by Shoug. on 07/05/2023.
//

import Foundation

struct Owners: Codable {
    
    var OwnerFirstName: String
    var OwnerLastName: String
    var OwnerEmail: String
    var OwnerPhoneNumber: String
    var OwnerPassword: String
    var OwnerIDNumber: String
    var signUpDate = Date.now
    
}

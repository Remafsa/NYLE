//
//  Farmers.swift
//  NYLE
//
//  Created by Shoug. on 07/05/2023.
//

import Foundation

struct Farmers: Codable {
    
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    var password: String
    var idNumber: String
    var signUpDate = Date.now
    
}

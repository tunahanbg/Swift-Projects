//
//  User.swift
//  Appetizers
//
//  Created by Tunahan Büyükgebiz on 30.10.2023.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}

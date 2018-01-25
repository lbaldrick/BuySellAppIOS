//
//  CreateAccountRequestDto.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 22/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class CreateAccountRequestDto: Encodable {
    var firstName: String
    var lastName: String
    var password: String
    var passwordConf: String
    var email: String
    var username: String
    var dateOfBirth: String
    
    init(firstName: String, lastName: String, password: String, passwordConf: String, email: String, username: String, dateOfBirth: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        self.passwordConf = passwordConf
        self.email = email
        self.username = username
        self.dateOfBirth = dateOfBirth.description
    }
    
    func serialize() -> Data? {
        let encoder = JSONEncoder()
        return try? encoder.encode(self)
    }
}

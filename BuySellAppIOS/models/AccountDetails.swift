//
//  Account.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

struct AccountDetails: Decodable {
    var firstName: String
    var lastName: String
    var accId: String
    var username: String
    var balance: Double
    
    init(firstName: String, lastName: String, accId: String, username: String, balance: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.accId = accId
        self.username = username
        self.balance = balance
    }
}

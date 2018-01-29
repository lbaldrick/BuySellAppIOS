//
//  LoginRequestDto.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 26/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class LoginRequestDto: Encodable {
    var password: String
    var username: String
    
    init(username: String, password: String) {
        self.password = password
        self.username = username
    }
    
    func serialize() -> Data? {
        let encoder = JSONEncoder()
        return try? encoder.encode(self)
    }
}

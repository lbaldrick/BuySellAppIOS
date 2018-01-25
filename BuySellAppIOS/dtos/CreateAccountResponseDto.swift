//
//  CreateAccountResponseDto.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 22/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class CreateAccountResponseDto: Decodable {
    var accountDetails: AccountDetails
    
    init(accountDetails: AccountDetails) {
        self.accountDetails = accountDetails
    }
}

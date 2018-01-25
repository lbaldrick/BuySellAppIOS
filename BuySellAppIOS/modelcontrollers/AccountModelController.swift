//
//  AccountModelController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class AccountModelController {
    var accountDetails: AccountDetails?
    
    let createUrl: String = "http://localhost:3000/api/v1/user/create"
    let getUrl: String = "http://localhost:3000/api/v1/user/"
    
    func createAccountDetails(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String) {
        let createAccountRequestDto = CreateAccountRequestDto(firstName: firstName, lastName: lastName, password: password, passwordConf: confPassword, email: email, username: username, dateOfBirth: dateOfBirth)
        
        let data = createAccountRequestDto.serialize()
      
        Rest.post(url: createUrl, body: data!){(json) in
            guard let jsonData = json as? Data else {
                print("ERROR: Problem converting jsonData to Data")
                return;
            }
            
            do {
                let jsonDecoder = JSONDecoder()
                let createAccountResponseDto = try jsonDecoder.decode(CreateAccountResponseDto.self, from: jsonData)
                self.accountDetails = createAccountResponseDto.accountDetails
            } catch {
                print("ERROR: Problem decoding json")
            }
        }
    }
    
    func fetchAccountDetails() {
        //call mw
    }
    
    func getAccountDetails(completionHandler: @escaping (AccountDetails) -> Void) {
        self.accountDetails = AccountDetails(firstName: "Joe", lastName: "Bloggs", accId: "01", username: "jbloggs", balance: 0.0)
        completionHandler(self.accountDetails!)
        
    }
}

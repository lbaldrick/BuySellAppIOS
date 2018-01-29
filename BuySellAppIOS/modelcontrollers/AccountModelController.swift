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
    
    let createUrl: String = "http://localhost:3000/api/v1/account/create"
    let loginUrl: String = "http://localhost:3000/api/v1/account/login"
    
    func createAccountDetails(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String, completionHandler:  @escaping (AccountDetails?) -> Void) {
        let createAccountRequestDto = CreateAccountRequestDto(firstName: firstName, lastName: lastName, password: password, passwordConf: confPassword, email: email, username: username, dateOfBirth: dateOfBirth)
        
        let data = createAccountRequestDto.serialize()
        makeRequest(url: createUrl, data: data, completionHandler: completionHandler)
    }
    
    func getAccountDetails(username: String, password: String, completionHandler: @escaping (AccountDetails?) -> Void) {
        guard let accountDetails = self.accountDetails else {
            let loginRequestDto = LoginRequestDto(username: username, password: password)
            let data = loginRequestDto.serialize()
            
            makeRequest(url: loginUrl, data: data, completionHandler: completionHandler)
            return
        }
        
        completionHandler(accountDetails)
    }
    
    func clearAccountDetails() {
        self.accountDetails = nil
    }
    
    func updateBalance(amount: Double) {
        self.accountDetails?.balance += amount
    }
    
    private func makeRequest(url: String, data: Data?, completionHandler: @escaping (AccountDetails?) -> Void) {
        Rest.post(url: url, body: data!){(json) in
            guard let jsonData = json as? Data else {
                print("ERROR: Problem converting jsonData to Data")
                completionHandler(nil)
                return;
            }
            
            do {
                let jsonDecoder = JSONDecoder()
                let createAccountResponseDto = try jsonDecoder.decode(CreateAccountResponseDto.self, from: jsonData)
                self.accountDetails = createAccountResponseDto.accountDetails
            } catch {
                print("ERROR: Problem decoding json")
            }
            
            completionHandler(self.accountDetails)
        }
    }
}

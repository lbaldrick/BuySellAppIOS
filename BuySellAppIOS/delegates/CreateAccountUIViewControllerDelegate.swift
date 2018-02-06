//
//  CreateAccountDelegate.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

protocol CreateAccountUIViewControllerDelegate {
    func createAccountDetails(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String, failureHandler: @escaping () -> Void)
}

//
//  LoginUIViewControllerDelegate.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 05/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


protocol LoginUIViewControllerDelegate {
    func attemptedLogin(username: String, password: String, failureHandler: @escaping (Int) -> Void)
    func createNewAccountSelected()
    func attemptedCreateAccount(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String, failureHandler: @escaping () -> Void)
}



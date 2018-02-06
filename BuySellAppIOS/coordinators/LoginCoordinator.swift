//
//  LoginCoordinator.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 02/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation
import UIKit


class LoginCoordinator: CoordinatorBase, LoginUIViewControllerDelegate {
    private let navigationController: UINavigationController
    private let accountModelController: AccountModelController
    private let delegate: LoginCoordinatorDelegate
    private var numOfLoginAttempts: Int = 0
    private var isLoggedIn: Bool = false

    
    init(navigationController: UINavigationController, accountModelController: AccountModelController, delegate: LoginCoordinatorDelegate) {
        self.navigationController = navigationController
        self.accountModelController = accountModelController
        self.delegate = delegate
    }
    
    override func start() {
        let loginUIViewController = LoginUIViewController()
        loginUIViewController.delegate = self
        loginUIViewController.initialize()
        navigationController.show(loginUIViewController, sender: self)
    }
    
    func attemptedLogin(username: String, password: String, failureHandler: @escaping (Int) -> Void) {
        //TODO - remove
        if (username == "" && password == "") {
            self.delegate.successfullyLoggedIn(coordinator: self)
            return
        }
        
        self.accountModelController.getAccountDetails(username: username, password: password) {
            (accountDetails) in
            if (accountDetails != nil) {
                 self.delegate.successfullyLoggedIn(coordinator: self)
            } else {
                self.numOfLoginAttempts += 1
                failureHandler(self.numOfLoginAttempts)
            }
           
        }
    }
    
    func createNewAccountSelected() {
        let createAccountController = CreateAccountUIViewController()
        createAccountController.delegate = self
        createAccountController.initialize()
        navigationController.show(createAccountController, sender: self)
    }
    
    func attemptedCreateAccount(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String, failureHandler: @escaping () -> Void) {
        accountModelController.createAccountDetails(firstName: firstName, lastName: lastName, username: username, password: password, confPassword: confPassword, dateOfBirth: dateOfBirth, email: email) {
            (accountDetails) in
            if (accountDetails != nil) {
                print("Account creation successful")
                self.delegate.successfullyCreateAccount(coordinator: self)
            } else {
                print("Account creation failed")
                failureHandler()
            }
        }
    }
    
}

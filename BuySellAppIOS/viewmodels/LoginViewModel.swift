//
//  LoginViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 26/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


struct LoginViewModel {
    var username: String
    var password: String
    let error: String = "Username or password not recognised"
    var showError: Bool {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "showError", value: showError)
        }
    }
    var isLoggingIn: Bool {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "isLoggingIn", value: isLoggingIn)
        }
    }
    var viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate
   
    init(username: String , password: String, showError: Bool, isLoggingIn: Bool, viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate) {
        self.showError = showError
        self.username = username
        self.password = password
        self.isLoggingIn = isLoggingIn
        self.viewModelDidUpdateDelegate = viewModelDidUpdateDelegate
    }
}

//
//  LoginUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 17/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class LoginUIViewController: UIViewController, CreateAccountDelegate, LoginDelegate, ViewModelDidUpdateDelegate {
    
    var accountModelController: AccountModelController!
    var loginViewModel: LoginViewModel!
    var loginView: LoginUIView!
    var delegate: LoginUIViewControllerDelegate!
    
    func initialize() {
        loginView = LoginUIView(frame: CGRect.zero)
        loginView.createAccountDelegate = self
        loginView.loginDelegate = self
        
        loginViewModel = LoginViewModel(username: "", password: "", showError: false, isLoggingIn: false, viewModelDidUpdateDelegate: self)
        loginViewModel.viewModelDidUpdateDelegate = self
        self.loginView.errorLbl.text = self.loginViewModel.error
        self.view.addSubview(loginView)
        self.title = "Login"
        setupConstraints()
    }
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 50).isActive  = true
        loginView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        loginView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        loginView.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }
    
    
    func createAccount() {
        delegate.createNewAccountSelected()
    }
    
    func login() {
        delegate.attemptedLogin(username: self.loginView.usernameTxtField.text!, password: self.loginView.passwordTxtField.text!, failureHandler: {
            (count) in
                print("login attempt failed \(count) times")
        })
    }
    
    func viewModelDidUpdate(key: String, value: Any) {
        print("View model variable changed: \(key) \(value)")
        switch key {
            case "showError":
                self.loginView.errorLbl.isHidden = !(value as! Bool)
            
            default:
                print("No action required")
        }
    }
    

}

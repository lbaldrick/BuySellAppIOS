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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let createAccountController = CreateAccountUIViewController()
        createAccountController.accountModelController = self.accountModelController
        navigationController?.pushViewController(createAccountController , animated: false)
    }
    
    func login() {
        //TODO - Added ONLY FOR DEV PURPOSES REMOVE!!
        if (loginView.usernameTxtField.text == "" && loginView.passwordTxtField.text == "") {
            let buySellTabBarController = BuySellTabBarController()
            buySellTabBarController.accountModelController = self.accountModelController
            self.navigationController?.pushViewController(buySellTabBarController , animated: false)
            return
        }
        
        
        self.accountModelController.getAccountDetails(username: loginView.usernameTxtField.text!, password: loginView.passwordTxtField.text!) {
            (accountDetails) in
                guard let username = accountDetails?.username else {
                    self.loginViewModel.showError = true
                    return
                }
    
                self.loginViewModel.username = username
                self.loginViewModel.showError = false
            
                let buySellTabBarController = BuySellTabBarController()
                buySellTabBarController.accountModelController = self.accountModelController
                self.navigationController?.pushViewController(buySellTabBarController , animated: false)
        }
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

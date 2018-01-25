//
//  LoginUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 17/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class LoginUIViewController: UIViewController, CreateAccountDelegate, LoginDelegate {
    var loginView: LoginUIView!
    var restClient: Rest!
    var accountModelController: AccountModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginUIView(frame: CGRect.zero)
        loginView.createAccountDelegate = self
        loginView.loginDelegate = self
        self.view.addSubview(loginView)
        accountModelController = AccountModelController()
        setupConstraints()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 50).isActive  = true
        loginView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        loginView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        loginView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
        loginView.loginLbl.translatesAutoresizingMaskIntoConstraints = false
        loginView.loginLbl.topAnchor.constraint( equalTo: loginView.topAnchor,  constant: 20).isActive = true
        loginView.loginLbl.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 160).isActive = true
        loginView.loginLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        loginView.loginLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        loginView.usernameLbl.translatesAutoresizingMaskIntoConstraints = false
        loginView.usernameLbl.topAnchor.constraint(equalTo: loginView.loginLbl.topAnchor, constant: 35).isActive = true
        loginView.usernameLbl.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20).isActive = true
        loginView.usernameLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginView.usernameLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        loginView.usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        loginView.usernameTxtField.leftAnchor.constraint(equalTo: loginView.usernameLbl.rightAnchor, constant: 1).isActive = true
        loginView.usernameTxtField.topAnchor.constraint(equalTo: loginView.loginLbl.topAnchor, constant: 40).isActive = true
        loginView.usernameTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginView.usernameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        loginView.passwordLbl.translatesAutoresizingMaskIntoConstraints = false
        loginView.passwordLbl.topAnchor.constraint(equalTo: loginView.usernameLbl.topAnchor, constant: 50).isActive = true
        loginView.passwordLbl.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20).isActive = true
        loginView.passwordLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginView.passwordLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        loginView.passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        loginView.passwordTxtField.leftAnchor.constraint(equalTo: loginView.passwordLbl.rightAnchor, constant: 1).isActive = true
        loginView.passwordTxtField.topAnchor.constraint(equalTo: loginView.usernameTxtField.bottomAnchor, constant: 10).isActive = true
        loginView.passwordTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginView.passwordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        loginView.loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginView.loginBtn.topAnchor.constraint(equalTo: loginView.passwordLbl.bottomAnchor, constant: 50).isActive = true
        loginView.loginBtn.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 80).isActive = true
        
        loginView.cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        loginView.cancelBtn.topAnchor.constraint(equalTo: loginView.passwordLbl.bottomAnchor, constant: 50).isActive = true
        loginView.cancelBtn.leftAnchor.constraint(equalTo: loginView.loginBtn.rightAnchor, constant: 100).isActive = true

        loginView.createAccBtn.translatesAutoresizingMaskIntoConstraints = false
        loginView.createAccBtn.bottomAnchor.constraint(equalTo: loginView.bottomAnchor, constant: -50).isActive = true
        loginView.createAccBtn.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20).isActive = true
        loginView.createAccBtn.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -20).isActive = true
    }
    
    func createAccount() {
        let createAccountController = CreateAccountUIViewController()
        createAccountController.accountModelController = self.accountModelController
        navigationController?.pushViewController(createAccountController , animated: false)
    }
    
    func login() {
        let buySellTabBarController = BuySellTabBarController()
        buySellTabBarController.accountModelController = self.accountModelController
        navigationController?.pushViewController(buySellTabBarController , animated: false)
    }
    

}

//
//  LoginUiView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 17/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class LoginUIView: UIView, CreateAccountDelegate, LoginDelegate {
    
    var loginLbl: UILabel!
    var usernameLbl: UILabel!
    var passwordLbl: UILabel!
    var usernameTxtField: UITextField!
    var passwordTxtField: UITextField!
    var loginBtn: UIButton!
    var cancelBtn: UIButton!
    var createAccBtn: UIButton!
    
    
    var createAccountDelegate: CreateAccountDelegate?
    var loginDelegate: LoginDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.lightGray
        
        loginLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        loginLbl.backgroundColor = UIColor.lightGray
        loginLbl.text = "Login"
        self.addSubview(loginLbl)
        
        usernameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameLbl.backgroundColor = UIColor.lightGray
        usernameLbl.text = "Username"
        self.addSubview(usernameLbl)
        
        usernameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameTxtField.backgroundColor = UIColor.white
        usernameTxtField.borderStyle = UITextBorderStyle.roundedRect
        usernameTxtField.placeholder = "Enter username"
        usernameTxtField.textColor = UIColor.darkGray
        self.addSubview(usernameTxtField)
        
        passwordLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        passwordLbl.backgroundColor = UIColor.lightGray
        passwordLbl.text = "Password"
        self.addSubview(passwordLbl)
        
        passwordTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        passwordTxtField.backgroundColor = UIColor.white
        passwordTxtField.borderStyle = UITextBorderStyle.roundedRect
        passwordTxtField.placeholder = "Enter password"
        self.addSubview(passwordTxtField)
        
        loginBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        loginBtn.isEnabled = true
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.addTarget(self, action: #selector(self.onLogin),
                       for: .touchUpInside)
        self.addSubview(loginBtn)
        
        cancelBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        cancelBtn.isEnabled = false
        cancelBtn.setTitle("Cancel", for: .normal)
        self.addSubview(cancelBtn)
        
        createAccBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        createAccBtn.isEnabled = true
        createAccBtn.setTitle("Create a new account", for: .normal)
        
        createAccBtn.addTarget(self, action: #selector(self.onCreateAccBtnPressed),
                         for: .touchUpInside)
        
        self.addSubview(createAccBtn)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func onLogin() {
        print("create login button pressed")
        self.login()
    }
    
    @objc func onCreateAccBtnPressed() {
        print("create account button pressed")
        self.createAccount()
    }
    
    func login() {
         loginDelegate?.login()
    }
    
    func createAccount() {
         createAccountDelegate?.createAccount()
    }
}

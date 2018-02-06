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
    
    var errorLbl: UILabel!
    
    var createAccountDelegate: CreateAccountDelegate?
    var loginDelegate: LoginDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.00, green:0.45, blue:0.74, alpha:1.0)
        
        loginLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        loginLbl.font = UIFont(name:"Helvetica-Bold", size:17.0)
        loginLbl.text = "Retro Gaming Auction"
        loginLbl.textAlignment = NSTextAlignment.center
        self.addSubview(loginLbl)
        
        usernameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameLbl.text = "Username"
        self.addSubview(usernameLbl)
        
        usernameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameTxtField.backgroundColor = UIColor.white
        usernameTxtField.borderStyle = UITextBorderStyle.roundedRect
        usernameTxtField.placeholder = "Enter username"
        usernameTxtField.textColor = UIColor.darkGray
        self.addSubview(usernameTxtField)
        
        passwordLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
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
        
        errorLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        errorLbl.font = UIFont(name:"Helvetica-Bold", size:17.0)
        errorLbl.textColor = UIColor.white
        errorLbl.backgroundColor = UIColor.red
        errorLbl.textAlignment = NSTextAlignment.center
        errorLbl.isHidden = true
        self.addSubview(errorLbl)
        
        setupConstraints() 
        
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
    
    func setupConstraints() {
        loginLbl.translatesAutoresizingMaskIntoConstraints = false
        loginLbl.topAnchor.constraint( equalTo: self.topAnchor,  constant: 20).isActive = true
        loginLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        loginLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        loginLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        usernameLbl.translatesAutoresizingMaskIntoConstraints = false
        usernameLbl.topAnchor.constraint(equalTo: self.loginLbl.topAnchor, constant: 35).isActive = true
        usernameLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        usernameLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        usernameLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        usernameTxtField.leftAnchor.constraint(equalTo: self.usernameLbl.rightAnchor, constant: 1).isActive = true
        usernameTxtField.topAnchor.constraint(equalTo: self.loginLbl.topAnchor, constant: 40).isActive = true
        usernameTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        usernameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        passwordLbl.translatesAutoresizingMaskIntoConstraints = false
        passwordLbl.topAnchor.constraint(equalTo: self.usernameLbl.topAnchor, constant: 50).isActive = true
        passwordLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        passwordLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        passwordTxtField.leftAnchor.constraint(equalTo: self.passwordLbl.rightAnchor, constant: 1).isActive = true
        passwordTxtField.topAnchor.constraint(equalTo: self.usernameTxtField.bottomAnchor, constant: 10).isActive = true
        passwordTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        passwordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.topAnchor.constraint(equalTo: self.passwordLbl.bottomAnchor, constant: 50).isActive = true
        loginBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80).isActive = true
        
        cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        cancelBtn.topAnchor.constraint(equalTo: self.passwordLbl.bottomAnchor, constant: 50).isActive = true
        cancelBtn.leftAnchor.constraint(equalTo: self.loginBtn.rightAnchor, constant: 100).isActive = true
        
        createAccBtn.translatesAutoresizingMaskIntoConstraints = false
        createAccBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true
        createAccBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50).isActive = true
        createAccBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -50).isActive = true
        
        errorLbl.translatesAutoresizingMaskIntoConstraints = false
        errorLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        errorLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        errorLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        errorLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
}

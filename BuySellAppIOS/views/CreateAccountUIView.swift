//
//  CreateAccountView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class CreateAccountUIView: UIView {
    
    private let firstNameValidationError = "First name must be greater than 1 character in length"
    private let lastNameValidationError = "Last name must be greater than 1 character in length"
    private let dateOfBirthValidationError = "You must be older than 18 years of age"
    private let emailValidationError = "Email address must be valid"
    private let usernameValidationError = "Username must be valid"
    private let passwordValidationError = "Password must be greater than 6 characters in length"
    private let confPasswordValidationError = "Passwords do not match"
    private let error = "Sorry we were unable to create the account"

    var firstNameLbl: UILabel!
    var lastNameLbl: UILabel!
    var dateOfBirthLbl: UILabel!
    var emailLbl: UILabel!
    var usernameLbl: UILabel!
    var passwordLbl: UILabel!
    var confirmPasswordLbl: UILabel!
    var firstNameTxtField: UITextField!
    var lastNameTxtField: UITextField!
    var dateOfBirthDatePicker: UIDatePicker!
    var emailTxtField: UITextField!
    var usernameTxtField: UITextField!
    var passwordTxtField: UITextField!
    var confirmPasswordTxtField: UITextField!
    var cancelBtn: UIButton!
    var submitBtn: UIButton!
    var firstNameValidationLbl: UILabel!
    var lastNameValidationLbl: UILabel!
    var dateOfBirthValidationLbl: UILabel!
    var emailValidationLbl: UILabel!
    var usernameValidationLbl: UILabel!
    var passwordValidationLbl: UILabel!
    var confPasswordValidationLbl: UILabel!
    var errorLbl: UILabel!
    
    var delegate: SubmitAccountDetailsDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.00, green:0.45, blue:0.74, alpha:1.0)
        createUIComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func onSubmitBtnPressed() {
        print("Submit button pressed")
        let firstName = firstNameTxtField.text ?? ""
        let lastName = lastNameTxtField.text ?? ""
        let username = usernameTxtField.text ?? ""
        let password = passwordTxtField.text ?? ""
        let confPassword = confirmPasswordTxtField.text ?? ""
        let dateOfBirth = dateOfBirthDatePicker.date
        let email = emailTxtField.text ?? ""
        
        delegate.submitAccountDetails(firstName: firstName, lastName: lastName, username: username, password: password, confPassword: confPassword, dateOfBirth: dateOfBirth, email: email)
    }
    
    @objc func onCancelBtnPressed() {
        print("Cancel button pressed")
        firstNameTxtField.text = ""
        lastNameTxtField.text = ""
        usernameTxtField.text = ""
        passwordTxtField.text = ""
        confirmPasswordTxtField.text = ""
        emailTxtField.text = ""
    }
    
    func createUIComponents() {
        firstNameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        firstNameLbl.text = "First Name"
        self.addSubview(firstNameLbl)
        
        firstNameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        firstNameTxtField.backgroundColor = UIColor.white
        firstNameTxtField.borderStyle = UITextBorderStyle.roundedRect
        firstNameTxtField.placeholder = "Enter first name"
        firstNameTxtField.textColor = UIColor.darkGray
        self.addSubview(firstNameTxtField)
        
        firstNameValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        firstNameValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        firstNameValidationLbl.textColor = UIColor.white
        firstNameValidationLbl.backgroundColor = UIColor.red
        firstNameValidationLbl.textAlignment = NSTextAlignment.center
        firstNameValidationLbl.isHidden = true
        firstNameValidationLbl.text = firstNameValidationError
        self.addSubview(firstNameValidationLbl)
        
        lastNameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        lastNameLbl.text = "Last Name"
        self.addSubview(lastNameLbl)
        
        lastNameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        lastNameTxtField.backgroundColor = UIColor.white
        lastNameTxtField.borderStyle = UITextBorderStyle.roundedRect
        lastNameTxtField.placeholder = "Enter last name"
        lastNameTxtField.textColor = UIColor.darkGray
        self.addSubview(lastNameTxtField)
        
        lastNameValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        lastNameValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        lastNameValidationLbl.textColor = UIColor.white
        lastNameValidationLbl.backgroundColor = UIColor.red
        lastNameValidationLbl.textAlignment = NSTextAlignment.center
        lastNameValidationLbl.isHidden = true
        lastNameValidationLbl.text = lastNameValidationError
        self.addSubview(lastNameValidationLbl)
        
        dateOfBirthLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        dateOfBirthLbl.text = "Date of Birth"
        self.addSubview(dateOfBirthLbl)
        
        dateOfBirthDatePicker = UIDatePicker(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        dateOfBirthDatePicker.backgroundColor = UIColor.white
        dateOfBirthDatePicker.datePickerMode = UIDatePickerMode.date
        self.addSubview(dateOfBirthDatePicker)
        
        dateOfBirthValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        dateOfBirthValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        dateOfBirthValidationLbl.textColor = UIColor.white
        dateOfBirthValidationLbl.backgroundColor = UIColor.red
        dateOfBirthValidationLbl.textAlignment = NSTextAlignment.center
        dateOfBirthValidationLbl.isHidden = true
        dateOfBirthValidationLbl.text = dateOfBirthValidationError
        self.addSubview(dateOfBirthValidationLbl)
        
        emailLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        emailLbl.text = "Email"
        self.addSubview(emailLbl)
        
        emailTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        emailTxtField.backgroundColor = UIColor.white
        emailTxtField.borderStyle = UITextBorderStyle.roundedRect
        emailTxtField.placeholder = "Enter email"
        emailTxtField.textColor = UIColor.darkGray
        self.addSubview(emailTxtField)
        
        emailValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        emailValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        emailValidationLbl.textColor = UIColor.white
        emailValidationLbl.backgroundColor = UIColor.red
        emailValidationLbl.textAlignment = NSTextAlignment.center
        emailValidationLbl.isHidden = true
        emailValidationLbl.text = emailValidationError
        self.addSubview(emailValidationLbl)
        
        usernameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameLbl.text = "Username"
        self.addSubview(usernameLbl)
        
        usernameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameTxtField.backgroundColor = UIColor.white
        usernameTxtField.borderStyle = UITextBorderStyle.roundedRect
        usernameTxtField.placeholder = "Enter username"
        usernameTxtField.textColor = UIColor.darkGray
        self.addSubview(usernameTxtField)
        
        usernameValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        usernameValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        usernameValidationLbl.textColor = UIColor.white
        usernameValidationLbl.backgroundColor = UIColor.red
        usernameValidationLbl.textAlignment = NSTextAlignment.center
        usernameValidationLbl.isHidden = true
        usernameValidationLbl.text = usernameValidationError
        self.addSubview(usernameValidationLbl)
        
        passwordLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        passwordLbl.text = "Password"
        self.addSubview(passwordLbl)
        
        passwordTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        passwordTxtField.backgroundColor = UIColor.white
        passwordTxtField.borderStyle = UITextBorderStyle.roundedRect
        passwordTxtField.placeholder = "Enter password"
        passwordTxtField.textColor = UIColor.darkGray
        self.addSubview(passwordTxtField)
        
        passwordValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        passwordValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        passwordValidationLbl.textColor = UIColor.white
        passwordValidationLbl.backgroundColor = UIColor.red
        passwordValidationLbl.textAlignment = NSTextAlignment.center
        passwordValidationLbl.isHidden = true
        passwordValidationLbl.text = passwordValidationError
        self.addSubview(passwordValidationLbl)
        
        confirmPasswordLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confirmPasswordLbl.text = "Confirm Password"
        self.addSubview(confirmPasswordLbl)
        
        confirmPasswordTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confirmPasswordTxtField.backgroundColor = UIColor.white
        confirmPasswordTxtField.borderStyle = UITextBorderStyle.roundedRect
        confirmPasswordTxtField.placeholder = "Confirm password"
        confirmPasswordTxtField.textColor = UIColor.darkGray
        self.addSubview(confirmPasswordTxtField)
        
        confPasswordValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confPasswordValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        confPasswordValidationLbl.textColor = UIColor.white
        confPasswordValidationLbl.backgroundColor = UIColor.red
        confPasswordValidationLbl.textAlignment = NSTextAlignment.center
        confPasswordValidationLbl.isHidden = true
        confPasswordValidationLbl.text = confPasswordValidationError
        self.addSubview(confPasswordValidationLbl)
        
        cancelBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        cancelBtn.isEnabled = false
        cancelBtn.setTitle("Cancel", for: .normal)
        cancelBtn.addTarget(self, action: #selector(self.onCancelBtnPressed),
                            for: .touchUpInside)
        self.addSubview(cancelBtn)
        
        submitBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        submitBtn.isEnabled = true
        submitBtn.setTitle("Submit", for: .normal)
        submitBtn.addTarget(self, action: #selector(self.onSubmitBtnPressed),
                            for: .touchUpInside)
        
        self.addSubview(submitBtn)
        
        errorLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        errorLbl.font = UIFont(name:"Helvetica-Bold", size:17.0)
        errorLbl.backgroundColor = UIColor.red
        errorLbl.textAlignment = NSTextAlignment.center
        errorLbl.textAlignment = NSTextAlignment.center
        errorLbl.isHidden = true
        errorLbl.text = error
        self.addSubview(errorLbl)
    }
    
    func setupConstraints() {
        self.firstNameLbl.translatesAutoresizingMaskIntoConstraints = false
        self.firstNameLbl.topAnchor.constraint( equalTo: self.topAnchor,  constant: 20).isActive = true
        self.firstNameLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.firstNameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.firstNameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.firstNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.firstNameTxtField.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        self.firstNameTxtField.leftAnchor.constraint(equalTo: self.firstNameLbl.rightAnchor, constant: 15).isActive = true
        self.firstNameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.firstNameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.firstNameValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.firstNameValidationLbl.topAnchor.constraint(equalTo: firstNameTxtField.bottomAnchor, constant: 2).isActive = true
        self.firstNameValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.firstNameValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.firstNameValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.lastNameLbl.translatesAutoresizingMaskIntoConstraints = false
        self.lastNameLbl.topAnchor.constraint( equalTo: self.firstNameLbl.bottomAnchor,  constant: 25).isActive = true
        self.lastNameLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.lastNameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.lastNameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.lastNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.lastNameTxtField.topAnchor.constraint(equalTo: self.firstNameLbl.bottomAnchor, constant: 25).isActive = true
        self.lastNameTxtField.leftAnchor.constraint(equalTo: self.lastNameLbl.rightAnchor, constant: 15).isActive = true
        self.lastNameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.lastNameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.lastNameValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.lastNameValidationLbl.topAnchor.constraint(equalTo: lastNameTxtField.bottomAnchor, constant: 2).isActive = true
        self.lastNameValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.lastNameValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.lastNameValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.dateOfBirthLbl.translatesAutoresizingMaskIntoConstraints = false
        self.dateOfBirthLbl.topAnchor.constraint( equalTo: self.lastNameLbl.bottomAnchor,  constant: 25).isActive = true
        self.dateOfBirthLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.dateOfBirthLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.dateOfBirthLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.dateOfBirthDatePicker.translatesAutoresizingMaskIntoConstraints = false
        self.dateOfBirthDatePicker.topAnchor.constraint(equalTo: self.dateOfBirthLbl.bottomAnchor, constant: 10).isActive = true
        self.dateOfBirthDatePicker.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.dateOfBirthDatePicker.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        self.dateOfBirthDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.dateOfBirthValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.dateOfBirthValidationLbl.topAnchor.constraint(equalTo: dateOfBirthDatePicker.bottomAnchor, constant: 2).isActive = true
        self.dateOfBirthValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.dateOfBirthValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.dateOfBirthValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.emailLbl.translatesAutoresizingMaskIntoConstraints = false
        self.emailLbl.topAnchor.constraint( equalTo: self.dateOfBirthDatePicker.bottomAnchor,  constant: 25).isActive = true
        self.emailLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.emailLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.emailLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.emailTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.emailTxtField.topAnchor.constraint(equalTo: self.dateOfBirthDatePicker.bottomAnchor, constant: 25).isActive = true
        self.emailTxtField.leftAnchor.constraint(equalTo: self.usernameLbl.rightAnchor, constant: 15).isActive = true
        self.emailTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.emailTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.emailValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.emailValidationLbl.topAnchor.constraint(equalTo: emailTxtField.bottomAnchor, constant: 2).isActive = true
        self.emailValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.emailValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.emailValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.usernameLbl.translatesAutoresizingMaskIntoConstraints = false
        self.usernameLbl.topAnchor.constraint( equalTo: self.emailTxtField.bottomAnchor,  constant: 25).isActive = true
        self.usernameLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.usernameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.usernameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.usernameTxtField.topAnchor.constraint(equalTo: self.emailTxtField.bottomAnchor, constant: 25).isActive = true
        self.usernameTxtField.leftAnchor.constraint(equalTo: self.usernameLbl.rightAnchor, constant: 15).isActive = true
        self.usernameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.usernameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.usernameValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.usernameValidationLbl.topAnchor.constraint(equalTo: usernameTxtField.bottomAnchor, constant: 2).isActive = true
        self.usernameValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.usernameValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.usernameValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.passwordLbl.translatesAutoresizingMaskIntoConstraints = false
        self.passwordLbl.topAnchor.constraint( equalTo: self.usernameTxtField.bottomAnchor,  constant: 25).isActive = true
        self.passwordLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.passwordLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.passwordLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.passwordTxtField.topAnchor.constraint(equalTo: self.usernameTxtField.bottomAnchor, constant: 25).isActive = true
        self.passwordTxtField.leftAnchor.constraint(equalTo: self.passwordLbl.rightAnchor, constant: 15).isActive = true
        self.passwordTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.passwordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.passwordValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.passwordValidationLbl.topAnchor.constraint(equalTo: passwordTxtField.bottomAnchor, constant: 2).isActive = true
        self.passwordValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.passwordValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.passwordValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.confirmPasswordLbl.translatesAutoresizingMaskIntoConstraints = false
        self.confirmPasswordLbl.topAnchor.constraint( equalTo: self.passwordTxtField.bottomAnchor,  constant: 25).isActive = true
        self.confirmPasswordLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.confirmPasswordLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.confirmPasswordLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        self.confirmPasswordTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.confirmPasswordTxtField.topAnchor.constraint(equalTo: self.passwordTxtField.bottomAnchor, constant: 25).isActive = true
        self.confirmPasswordTxtField.leftAnchor.constraint(equalTo: self.confirmPasswordLbl.rightAnchor, constant: 15).isActive = true
        self.confirmPasswordTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.confirmPasswordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.confPasswordValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.confPasswordValidationLbl.topAnchor.constraint(equalTo: confirmPasswordTxtField.bottomAnchor, constant: 2).isActive = true
        self.confPasswordValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.confPasswordValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.confPasswordValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.submitBtn.translatesAutoresizingMaskIntoConstraints = false
        self.submitBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        self.submitBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80).isActive = true
        
        self.cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        self.cancelBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        self.cancelBtn.leftAnchor.constraint(equalTo: self.submitBtn.rightAnchor, constant: 100).isActive = true
        
        self.errorLbl.translatesAutoresizingMaskIntoConstraints = false
        self.errorLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        self.errorLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        self.errorLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 5).isActive = true
        self.errorLbl.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
}

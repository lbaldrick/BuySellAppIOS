//
//  CreateAccountView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class CreateAccountUIView: UIView {

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
    var delegate: SubmitAccountDetailsDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.lightGray
        
        firstNameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        firstNameLbl.backgroundColor = UIColor.lightGray
        firstNameLbl.text = "First Name"
        self.addSubview(firstNameLbl)
        
        firstNameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        firstNameTxtField.backgroundColor = UIColor.white
        firstNameTxtField.borderStyle = UITextBorderStyle.roundedRect
        firstNameTxtField.placeholder = "Enter first name"
        firstNameTxtField.textColor = UIColor.darkGray
        self.addSubview(firstNameTxtField)
        
        lastNameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        lastNameLbl.backgroundColor = UIColor.lightGray
        lastNameLbl.text = "Last Name"
        self.addSubview(lastNameLbl)
        
        lastNameTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        lastNameTxtField.backgroundColor = UIColor.white
        lastNameTxtField.borderStyle = UITextBorderStyle.roundedRect
        lastNameTxtField.placeholder = "Enter last name"
        lastNameTxtField.textColor = UIColor.darkGray
        self.addSubview(lastNameTxtField)
        
        dateOfBirthLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        dateOfBirthLbl.backgroundColor = UIColor.lightGray
        dateOfBirthLbl.text = "Date of Birth"
        self.addSubview(dateOfBirthLbl)
        
        dateOfBirthDatePicker = UIDatePicker(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        dateOfBirthDatePicker.backgroundColor = UIColor.white
        dateOfBirthDatePicker.datePickerMode = UIDatePickerMode.date
        self.addSubview(dateOfBirthDatePicker)
        
        emailLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        emailLbl.backgroundColor = UIColor.lightGray
        emailLbl.text = "Email"
        self.addSubview(emailLbl)
        
        emailTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        emailTxtField.backgroundColor = UIColor.white
        emailTxtField.borderStyle = UITextBorderStyle.roundedRect
        emailTxtField.placeholder = "Enter email"
        emailTxtField.textColor = UIColor.darkGray
        self.addSubview(emailTxtField)
        
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
        passwordTxtField.textColor = UIColor.darkGray
        self.addSubview(passwordTxtField)
        
        confirmPasswordLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confirmPasswordLbl.backgroundColor = UIColor.lightGray
        confirmPasswordLbl.text = "Confirm Password"
        self.addSubview(confirmPasswordLbl)
        
        confirmPasswordTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confirmPasswordTxtField.backgroundColor = UIColor.white
        confirmPasswordTxtField.borderStyle = UITextBorderStyle.roundedRect
        confirmPasswordTxtField.placeholder = "Confirm password"
        confirmPasswordTxtField.textColor = UIColor.darkGray
        self.addSubview(confirmPasswordTxtField)
        
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
    
}

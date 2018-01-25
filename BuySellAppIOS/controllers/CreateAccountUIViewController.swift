//
//  CreateAccountUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 19/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class CreateAccountUIViewController: UIViewController, SubmitAccountDetailsDelegate {    
    var createAccountView: CreateAccountUIView!
    var accountModelController: AccountModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAccountView = CreateAccountUIView(frame: CGRect.zero)
        createAccountView.delegate = self
        self.view.addSubview(createAccountView)
        self.title = "Create Account"
        
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
    
        createAccountView.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.topAnchor.constraint( equalTo: margins.topAnchor, constant: 50).isActive  = true
        createAccountView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        createAccountView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        createAccountView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        createAccountView.firstNameLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.firstNameLbl.topAnchor.constraint( equalTo: createAccountView.topAnchor,  constant: 50).isActive = true
        createAccountView.firstNameLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.firstNameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.firstNameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.firstNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.firstNameTxtField.topAnchor.constraint(equalTo: createAccountView.topAnchor, constant: 50).isActive = true
        createAccountView.firstNameTxtField.leftAnchor.constraint(equalTo: createAccountView.firstNameLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.firstNameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.firstNameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.lastNameLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.lastNameLbl.topAnchor.constraint( equalTo: createAccountView.firstNameLbl.bottomAnchor,  constant: 15).isActive = true
        createAccountView.lastNameLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.lastNameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.lastNameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.lastNameTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.lastNameTxtField.topAnchor.constraint(equalTo: createAccountView.firstNameLbl.bottomAnchor, constant: 15).isActive = true
        createAccountView.lastNameTxtField.leftAnchor.constraint(equalTo: createAccountView.lastNameLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.lastNameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.lastNameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.dateOfBirthLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.dateOfBirthLbl.topAnchor.constraint( equalTo: createAccountView.lastNameLbl.bottomAnchor,  constant: 15).isActive = true
        createAccountView.dateOfBirthLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.dateOfBirthLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.dateOfBirthLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        createAccountView.dateOfBirthDatePicker.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.dateOfBirthDatePicker.topAnchor.constraint(equalTo: createAccountView.dateOfBirthLbl.bottomAnchor, constant: 15).isActive = true
        createAccountView.dateOfBirthDatePicker.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.dateOfBirthDatePicker.rightAnchor.constraint(equalTo: createAccountView.rightAnchor, constant: -15).isActive = true
        createAccountView.dateOfBirthDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        createAccountView.emailLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.emailLbl.topAnchor.constraint( equalTo: createAccountView.dateOfBirthDatePicker.bottomAnchor,  constant: 15).isActive = true
        createAccountView.emailLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.emailLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.emailLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.emailTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.emailTxtField.topAnchor.constraint(equalTo: createAccountView.dateOfBirthDatePicker.bottomAnchor, constant: 15).isActive = true
        createAccountView.emailTxtField.leftAnchor.constraint(equalTo: createAccountView.usernameLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.emailTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.emailTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.usernameLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.usernameLbl.topAnchor.constraint( equalTo: createAccountView.emailTxtField.bottomAnchor,  constant: 15).isActive = true
        createAccountView.usernameLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.usernameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.usernameLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.usernameTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.usernameTxtField.topAnchor.constraint(equalTo: createAccountView.emailTxtField.bottomAnchor, constant: 15).isActive = true
        createAccountView.usernameTxtField.leftAnchor.constraint(equalTo: createAccountView.usernameLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.usernameTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.usernameTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.passwordLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.passwordLbl.topAnchor.constraint( equalTo: createAccountView.usernameTxtField.bottomAnchor,  constant: 15).isActive = true
        createAccountView.passwordLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.passwordLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.passwordLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.passwordTxtField.topAnchor.constraint(equalTo: createAccountView.usernameTxtField.bottomAnchor, constant: 15).isActive = true
        createAccountView.passwordTxtField.leftAnchor.constraint(equalTo: createAccountView.passwordLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.passwordTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.passwordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.confirmPasswordLbl.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.confirmPasswordLbl.topAnchor.constraint( equalTo: createAccountView.passwordTxtField.bottomAnchor,  constant: 15).isActive = true
        createAccountView.confirmPasswordLbl.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 15).isActive = true
        createAccountView.confirmPasswordLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.confirmPasswordLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        createAccountView.confirmPasswordTxtField.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.confirmPasswordTxtField.topAnchor.constraint(equalTo: createAccountView.passwordTxtField.bottomAnchor, constant: 15).isActive = true
        createAccountView.confirmPasswordTxtField.leftAnchor.constraint(equalTo: createAccountView.confirmPasswordLbl.rightAnchor, constant: 15).isActive = true
        createAccountView.confirmPasswordTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        createAccountView.confirmPasswordTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        createAccountView.submitBtn.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.submitBtn.bottomAnchor.constraint(equalTo: createAccountView.bottomAnchor, constant: -50).isActive = true
        createAccountView.submitBtn.leftAnchor.constraint(equalTo: createAccountView.leftAnchor, constant: 80).isActive = true
        
        createAccountView.cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        createAccountView.cancelBtn.bottomAnchor.constraint(equalTo: createAccountView.bottomAnchor, constant: -50).isActive = true
        createAccountView.cancelBtn.leftAnchor.constraint(equalTo: createAccountView.submitBtn.rightAnchor, constant: 100).isActive = true
    }
    
    func submitAccountDetails(firstName: String, lastName: String, username: String, password: String, confPassword: String, dateOfBirth: Date, email: String) {
        accountModelController.createAccountDetails(firstName: firstName, lastName: lastName, username: username, password: password, confPassword: confPassword, dateOfBirth: dateOfBirth, email: email)
    }

}

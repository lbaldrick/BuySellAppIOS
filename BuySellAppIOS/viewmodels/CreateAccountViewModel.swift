//
//  File.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 28/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class CreateAccountViewModel {
    var firstName: String {
        didSet {
            validateFirstName()
        }
    }
    
    var lastName: String {
        didSet {
            validateLastName()
        }
    }
    
    var dateOfBirth: Date {
        didSet {
            validateDateOfBirth()
        }
    }
    var email: String {
        didSet {
            validateEmail()
        }
    }
    
    var username: String {
        didSet {
            validateUsername()
        }
    }
    
    var password: String {
        didSet {
            validatePassword()
        }
    }
    
    var confPassword: String {
        didSet {
            validateConfPassword()
        }
    }
    
    var hasValidationError: Bool {
        get {
            return hasFirstNameValidationError || hasLastNameValidationError || hasDateOfBirthValidationError || hasEmailValidationError || hasPasswordValidationError || hasConfirmPasswordValidationError
        }
    }
    
    var hasFirstNameValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasFirstNameValidationError", value: hasFirstNameValidationError)
        }
    }
    
    var hasLastNameValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasLastNameValidationError", value: hasLastNameValidationError)
        }
    }
    
    var hasUsernameValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasUsernameValidationError", value: hasUsernameValidationError)
        }
    }
    
    var hasDateOfBirthValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasDateOfBirthValidationError", value: hasDateOfBirthValidationError)
        }
    }
    
    var hasEmailValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasEmailValidationError", value: hasEmailValidationError)
        }
    }
    
    var hasPasswordValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasPasswordValidationError", value: hasPasswordValidationError)
        }
    }
    
    var hasConfirmPasswordValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasConfirmPasswordValidationError", value: hasConfirmPasswordValidationError)
        }
    }
    
    var hasError: Bool = false  {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasError", value: hasError)
        }
    }
    
    var viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate
    
    init(firstName: String, lastName: String, dateOfBirth: Date, email: String, username: String, password: String, confPassword: String, viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.email = email
        self.username = username
        self.password = password
        self.confPassword = confPassword
        self.viewModelDidUpdateDelegate = viewModelDidUpdateDelegate
    }
    
    private func validateFirstName() {
       hasFirstNameValidationError = (self.firstName.count < 2)
    }
    
    private func validateLastName() {
        hasLastNameValidationError = (self.lastName.count < 2)
    }
    
    private func validateDateOfBirth() {
        let gregorian = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        let age = gregorian.components([NSCalendar.Unit.year], from: self.dateOfBirth, to: Date(), options: [])
        
        self.hasDateOfBirthValidationError = ((age.year ?? 0) < 18)
    }
    
    private func validateEmail() {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        hasEmailValidationError = !(emailPredicate.evaluate(with: self.email))

    }
    
    private func validateUsername() {
        hasUsernameValidationError = (self.username.count < 6)
    }
    
    private func validatePassword() {
        hasPasswordValidationError = (self.password.count < 6)
    }
    
    private func validateConfPassword() {
        hasConfirmPasswordValidationError = (self.password == self.confPassword)
    }
    
    
}

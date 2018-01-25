//
//  InputValidator.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 21/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class InputValidator {
    
    static func isNotEmpty(string: String?) -> Bool {
        return string == nil || string == ""
    }
    
    static func isNowGreaterThanDate(date: Date, years: Int) -> Bool {
        let now = Date()
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        let diff = calendar.dateComponents([.year], from: date, to: now)
        return diff.year! >= years
    }
}

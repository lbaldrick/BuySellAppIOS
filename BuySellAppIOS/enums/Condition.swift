//
//  Condition.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

enum Condition :String{
    case NEW
    case LIKE_NEW
    case GOOD
    case ACCEPTABLE
    case FOR_
    
    func type() -> String {
        return self.rawValue
    }
}

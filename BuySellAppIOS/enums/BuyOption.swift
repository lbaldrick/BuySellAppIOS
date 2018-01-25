//
//  SellType.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

enum BuyOption :String{
    case BUY_NOW
    case AUCTION
    case BEST_OFFER
    
    func type() -> String {
        return self.rawValue
    }
}

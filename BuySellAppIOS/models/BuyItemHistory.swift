//
//  BuyItemHistory.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class BuyItemHistory {
    var username: String
    var bid: Double
    var timestamp: Int
    
    init(username: String, bid: Double, timestamp: Int) {
        self.username = username
        self.bid = bid
        self.timestamp = timestamp
    }

}

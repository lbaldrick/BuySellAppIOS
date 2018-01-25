//
//  SellItem.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class SellItem {
    var id: String
    var title: String
    var description: String
    var condition: Condition
    var images: [Data]
    var startingBid: Double
    var endDateTime: Date
    var minimumPrice: Double
    var buyOption: BuyOption
    
    init(id: String, title: String, description: String, condition: Condition, images: [Data], startingBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: BuyOption) {
        self.id = id
        self.title = title
        self.description = description
        self.condition = condition
        self.images = images
        self.startingBid = startingBid
        self.endDateTime = endDateTime
        self.minimumPrice = minimumPrice
        self.buyOption = buyOption
    }
}

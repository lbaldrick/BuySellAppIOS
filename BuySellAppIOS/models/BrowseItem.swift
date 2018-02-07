//
//  BrowseItem.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 27/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

struct BrowseItem {
    var id: String
    var sellerUsername: String
    var title: String
    var description: String
    var condition: Condition
    var images: [Data]
    var currentBid: Double
    var endDateTime: Date
    var minimumPrice: Double
    var buyOption: BuyOption
    
    init(id: String, sellerUsername: String, title: String, description: String, condition: Condition, images: [Data], currentBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: BuyOption) {
        self.id = id
        self.sellerUsername = sellerUsername
        self.title = title
        self.description = description
        self.condition = condition
        self.images = images
        self.currentBid = currentBid
        self.endDateTime = endDateTime
        self.minimumPrice = minimumPrice
        self.buyOption = buyOption
    }
}

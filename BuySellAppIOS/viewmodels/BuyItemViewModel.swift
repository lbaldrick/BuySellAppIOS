//
//  BuyItemViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 01/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class BuyItemViewModel {
    var sellerUsername: String
    var title: String
    var description: String
    var condition: String
    var image: Data
    var currentBid: Double
    var endDateTime: Date
    var minimumPrice: Double
    var buyOption: String
    var isLoading: Bool
    var itemStillAvailable: Bool
    var isAuctionType: Bool
    
    init(sellerUsername: String, title: String, description: String, condition: String, image: Data, currentBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: String) {
        self.sellerUsername = sellerUsername
        self.title = title
        self.description = description
        self.condition = condition
        self.image = image
        self.currentBid = currentBid
        self.endDateTime = endDateTime
        self.minimumPrice = minimumPrice
        self.buyOption = buyOption
        self.isLoading = false
        self.itemStillAvailable = true
        self.isAuctionType = false
    }
    
    
}

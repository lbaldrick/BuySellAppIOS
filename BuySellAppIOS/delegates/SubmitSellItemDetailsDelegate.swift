//
//  SubmitSellItemDetailsDelegate.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 31/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

protocol SubmitSellItemDetailsDelegate {
    func submitSellItemDetails(title: String, description: String, condition: String, images: [Data], startingBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: String, buyNowPrice: Double)
}

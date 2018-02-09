//
//  BuyItemConfirmViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 09/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


struct BuyItemConfirmViewModel {
    var isSuccessful: Bool
    var isLoading: Bool
    var title: String
    var price: String
    
    init(isSuccessful: Bool, isLoading: Bool, title: String, price: Double) {
        self.isSuccessful = isSuccessful
        self.isLoading = isLoading
        self.title = title
        self.price = BuyItemConfirmViewModel.convertCurrencyToString(value: price)
    }
    
    
    private static func convertCurrencyToString(value: Double) -> String {
        return "£\(String(value))"
    }
}

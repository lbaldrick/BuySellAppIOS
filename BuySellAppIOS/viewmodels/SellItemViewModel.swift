//
//  SellItemViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 28/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class SellItemViewModel {
    var title: String {
        didSet {
            validateTitle()
        }
    }
    
    var description: String {
        didSet {
            validateDescription()
        }
    }
    
    var condition: String
    
    var images: [Data] {
        didSet {
            validateImages()
        }
    }
    
    var startingBid: Double
    
    var endDateTime: Date {
        didSet {
            validateEndDateTime()
        }
    }
    var minimumPrice: Double
    
    var buyOption: String {
        didSet {
            validateBuyingOption()
        }
    }
    
    var buyNowPrice: Double {
        didSet {
            validateBuyNowPrice()
        }
    }
    
    let viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate
    
    var hasValidationError: Bool {
        get {
            return hasTitleValidationError || hasDescriptionValidationError || hasImagesValidationError || hasStartingBidValidationError || hasEndDateTimeValidationError || hasMinimumPriceValidationError || hasBuyOptionValidationError
        }
    }
    
    var hasTitleValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasTitleValidationError", value: hasTitleValidationError)
        }
    }
    
    var hasDescriptionValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasDescriptionValidationError", value: hasDescriptionValidationError)
        }
    }
    
    var hasImagesValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasImagesValidationError", value: hasImagesValidationError)
        }
    }
    
    var hasStartingBidValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasStartingBidValidationError", value: hasStartingBidValidationError)
        }
    }
    
    var hasEndDateTimeValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasEndDateTimeValidationError", value: hasEndDateTimeValidationError)
        }
    }
    
    var hasMinimumPriceValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasMinimumPriceValidationError", value: hasMinimumPriceValidationError)
        }
    }
    
    var hasBuyOptionValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasBuyOptionValidationError", value: hasBuyOptionValidationError)
        }
    }
    var hasBuyNowPriceValidationError: Bool = false {
        didSet {
            viewModelDidUpdateDelegate.viewModelDidUpdate(key: "hasBuyNowPriceValidationError", value: hasBuyNowPriceValidationError)
        }
    }
    
    init(title: String, description: String, condition: String, images: [Data], startingBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: String, buyNowPrice: Double, viewModelDidUpdateDelegate: ViewModelDidUpdateDelegate) {
        self.title = title
        self.description = description
        self.condition = condition
        self.images = images
        self.startingBid = startingBid
        self.endDateTime = endDateTime
        self.minimumPrice = minimumPrice
        self.buyOption = buyOption
        self.buyNowPrice = buyNowPrice
        self.viewModelDidUpdateDelegate = viewModelDidUpdateDelegate
    }
    
    func validateTitle() {
        hasTitleValidationError = title == ""
    }
    
    func validateDescription() {
        hasDescriptionValidationError =  description == ""
    }
    
    func validateImages() {
        hasImagesValidationError =  images.count == 0
    }
    
    func validateStartingBid() {
        if (buyOption == BuyOption.AUCTION.type()) {
            hasStartingBidValidationError =  startingBid < 1.0
        } else {
            hasStartingBidValidationError = false
        }
    }
    
    func validateEndDateTime() {
        hasEndDateTimeValidationError = endDateTime.timeIntervalSinceNow < 86400
    }
    
    func validateMinimumPrice() {
        if (buyOption == BuyOption.AUCTION.type()) {
            hasMinimumPriceValidationError = minimumPrice < 1.0
        } else {
            hasMinimumPriceValidationError = false
        }
    }
    
    func validateBuyNowPrice() {
        if (buyOption == BuyOption.BEST_OFFER.type() || buyOption == BuyOption.BEST_OFFER.type()) {
            hasBuyNowPriceValidationError = buyNowPrice < 1.0
        } else {
            hasBuyNowPriceValidationError = false
        }
    }
    
    func validateBuyingOption() {
        validateMinimumPrice()
        validateBuyNowPrice()
        validateStartingBid()
    }
}

//
//  BrowseItemTableCellViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 28/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class BrowseItemTableCellViewModel {
    var itemId: String
    var itemImage: Data
    var title: String
    var condition: String
    var buyOption: String
    var itemDescription: String

    init(itemId: String, itemImage: Data, title: String, condition: Condition, buyOption: BuyOption, itemDescription: String) {
        self.itemId = itemId
        self.itemImage = itemImage
        self.title = title
        self.condition = condition.type()
        self.buyOption = buyOption.type()
        self.itemDescription = itemDescription
    }
}

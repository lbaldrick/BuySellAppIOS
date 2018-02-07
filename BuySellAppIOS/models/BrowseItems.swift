//
//  BrowseItemsModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 27/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

struct BrowseItems {
    let items: [BrowseItem]
    var count:Int {
        get {
            return items.count
        }
    }
    
    init(items: [BrowseItem]) {
        self.items = items
    }
}

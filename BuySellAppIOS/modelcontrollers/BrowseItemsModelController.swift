//
//  BrowseItemsModelController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 07/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

import UIKit

class BrowseItemsModelController {
    
    func getBrowseItems() -> BrowseItems {
        let browseItems = BrowseItems(items: [
            BrowseItem(id: "1", sellerUsername: "JoeBloggs", title: "Lethal Weapon Snes", description: "Great condition.", condition: Condition.GOOD,
                images: [
                    getImage(imageId: "lethalweapon-snes")
                ],
                currentBid: 22.00, endDateTime: Date.init(), minimumPrice: 22.0, buyOption: BuyOption.BUY_NOW),
            BrowseItem(id: "2", sellerUsername: "JoeBloggs", title: "Alien 3 Snes", description: "Test and in full working ordered.", condition: Condition.ACCEPTABLE,
                       images: [
                        getImage(imageId: "alien3-snes")
                ],
                       currentBid: 10.00, endDateTime: Date.init(), minimumPrice: 10.00, buyOption: BuyOption.BUY_NOW),
            BrowseItem(id: "3", sellerUsername: "JoeBloggs", title: "Blazing Skies Snes", description: "Like new has been tested and works.", condition: Condition.LIKE_NEW,
                       images: [
                        getImage(imageId: "blazing-skies-snes")
                ],
                       currentBid: 15.99, endDateTime: Date.init(), minimumPrice: 15.99, buyOption: BuyOption.BUY_NOW),
            BrowseItem(id: "4", sellerUsername: "JoeBloggs", title: "Desert Strike Snes", description: "Not tested as no longer have console but should be working as been stored well", condition: Condition.GOOD,
                       images: [
                        getImage(imageId: "desertstrike-snes")
                ],
                       currentBid: 18.01, endDateTime: Date.init(), minimumPrice: 18.01, buyOption: BuyOption.BUY_NOW),
            BrowseItem(id: "5", sellerUsername: "JoeBloggs", title: "Batman Returns Snes", description: "Test and works fine. Has a few marks and stains but doesnt affect usability", condition: Condition.ACCEPTABLE,
                       images: [
                        getImage(imageId: "batmanreturns-snes")
                ],
                       currentBid: 25.00, endDateTime: Date.init(), minimumPrice: 25.00, buyOption: BuyOption.BUY_NOW)
        
            ])
        return browseItems
    }
    
    func getImage(imageId: String) -> Data {
        let image = UIImage(named: imageId)
        let data = UIImageJPEGRepresentation(image!, 1) as Data?
        
        return data!
    }
}

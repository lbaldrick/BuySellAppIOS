//
//  BuyModelController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class BuyItemModelController {
    var accountModelController: AccountModelController
    var buyItem: BuyItem!
    
    init(accountModelController: AccountModelController) {
        self.accountModelController = accountModelController
    }
    
}

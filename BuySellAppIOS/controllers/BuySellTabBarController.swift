//
//  BuySellTabBarController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuySellTabBarController: UITabBarController {
    var sellViewController: SellItemUIViewController!
    var browseNavigationController: BrowseNavigationController!
    var accountModelController: AccountModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        sellViewController = SellItemUIViewController()
        browseNavigationController = BrowseNavigationController()
        
        sellViewController.tabBarItem = UITabBarItem()
        sellViewController.tabBarItem.badgeValue = "Sell"
        sellViewController.accountModelController = self.accountModelController
    
        browseNavigationController.tabBarItem = UITabBarItem()
        browseNavigationController.accountModelController = self.accountModelController
        browseNavigationController.tabBarItem.badgeValue = "Browse"
        
        self.viewControllers = [browseNavigationController, sellViewController]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

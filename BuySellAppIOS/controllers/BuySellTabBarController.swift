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
    
    func initialise() {
        sellViewController = SellItemUIViewController()
        browseNavigationController = BrowseNavigationController()
        
        sellViewController.tabBarItem = UITabBarItem()
        sellViewController.tabBarItem.badgeValue = "Sell"
        
        browseNavigationController.tabBarItem = UITabBarItem()
        browseNavigationController.tabBarItem.badgeValue = "Browse"
        
        self.viewControllers = [browseNavigationController, sellViewController]
    }
}

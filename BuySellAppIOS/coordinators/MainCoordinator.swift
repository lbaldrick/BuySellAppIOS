//
//  TabCoordinator.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 04/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation
import UIKit


class MainCoordinator: CoordinatorBase, BrowseUIViewControllerDelegate {
    
    private let navigationController: UINavigationController
    private let accountModelController: AccountModelController
    private var buyItemModelController: BuyItemModelController
    private var sellViewController: SellItemUIViewController!
    private var browseNavigationController: UINavigationController!
    private var buySellTabController: UITabBarController!
    private var browseUIViewController: BrowseUIViewController!

    
    init(navigationController: UINavigationController, accountModelController: AccountModelController) {
        self.navigationController = navigationController
        self.accountModelController = accountModelController
        self.buyItemModelController = BuyItemModelController(accountModelController: accountModelController)
    }
    
    override func start() {
        buySellTabController = UITabBarController()
        sellViewController = SellItemUIViewController()
        browseNavigationController = UINavigationController()
        
        sellViewController.tabBarItem = UITabBarItem()
        sellViewController.tabBarItem.badgeValue = "Sell"
        
        browseNavigationController.tabBarItem = UITabBarItem()
        browseNavigationController.tabBarItem.badgeValue = "Browse"
        
        browseUIViewController = BrowseUIViewController()
        browseUIViewController.delegate = self
        
        browseNavigationController.pushViewController(browseUIViewController, animated: false)
        
        buySellTabController.viewControllers = [browseNavigationController, sellViewController]
        
        navigationController.show(buySellTabController, sender: self)
    }
    
    func openBuyItemDetails(buyItem: BuyItem) {
        let buyItemUIViewController = BuyItemUIViewController()
        buyItemUIViewController.initialize(buyItem: buyItem)
        print("Opening buy now view controller")
        browseNavigationController.show(buyItemUIViewController , sender: self)
    }
}

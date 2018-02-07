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
    private let browseItemsModelController: BrowseItemsModelController
    private var sellViewController: SellItemUIViewController!
    private var browseNavigationController: UINavigationController!
    private var buySellTabController: UITabBarController!
    private var browseUIViewController: BrowseUIViewController!
    private var browseItemTableViewController: BrowseItemTableViewController!
    

    
    init(navigationController: UINavigationController, accountModelController: AccountModelController) {
        self.navigationController = navigationController
        self.accountModelController = accountModelController
        self.browseItemsModelController = BrowseItemsModelController()
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
        
        browseItemTableViewController = BrowseItemTableViewController()
        browseItemTableViewController.delegate = browseUIViewController
        browseItemTableViewController.title = "Browse Items"
        browseItemTableViewController.datasource = browseItemsModelController.getBrowseItems()

        browseUIViewController.view.addSubview(browseItemTableViewController.view)
        
        let margins = browseUIViewController.view.layoutMarginsGuide
        browseItemTableViewController.view.translatesAutoresizingMaskIntoConstraints = false
        browseItemTableViewController.view.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 5).isActive  = true
        browseItemTableViewController.view.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        browseItemTableViewController.view.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        browseItemTableViewController.view.bottomAnchor.constraint( equalTo: margins.bottomAnchor).isActive  = true
        browseNavigationController.pushViewController(browseUIViewController, animated: false)
        
        buySellTabController.viewControllers = [browseNavigationController, sellViewController]
        
        navigationController.show(buySellTabController, sender: self)
    }
    
    func openBuyItemDetails(id: String) {
        let buyItemUIViewController = BuyItemUIViewController()
        buyItemUIViewController.initialize(buyItem: browseItemsModelController.getBrowseItems().items.filter { (item) -> Bool in
            return item.id == id
        }.first!)
        print("Opening buy now view controller")
        browseNavigationController.show(buyItemUIViewController , sender: self)
    }
}

//
//  BuyUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BrowseUIViewController: UIViewController, OpenBuyItemDetails {
    
    var browseItemTableViewController: BrowseItemTableViewController!
    var delegate: BrowseUIViewControllerDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        browseItemTableViewController = BrowseItemTableViewController()
        browseItemTableViewController.delegate = self
        browseItemTableViewController.title = "Browse Items"
        view.addSubview(browseItemTableViewController.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func openBuyItemDetails(buyItem: BuyItem) {
        delegate.openBuyItemDetails(buyItem: buyItem)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.title = "Browse Items"
    }

}

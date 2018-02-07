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

    func openBuyItemDetails(id: String) {
        delegate.openBuyItemDetails(id: id)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.title = "Browse Items"
    }

}

//
//  BuySellTabBarController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuySellTabBarController: UITabBarController {
    var sellViewController: SellUIViewController!
    var buyViewController: BuyUIViewController!
    var accountModelController: AccountModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        sellViewController = SellUIViewController()
        buyViewController = BuyUIViewController()
        sellViewController.tabBarItem = UITabBarItem()
        sellViewController.tabBarItem.badgeColor = UIColor.lightGray
        sellViewController.accountModelController = self.accountModelController
        buyViewController.tabBarItem = UITabBarItem()
        buyViewController.tabBarItem.badgeColor = UIColor.lightGray
        buyViewController.accountModelController = self.accountModelController
        
        self.viewControllers = [buyViewController, sellViewController ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

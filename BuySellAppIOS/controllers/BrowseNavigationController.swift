//
//  BuyNavigationController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BrowseNavigationController: UINavigationController, OpenBuyItemDetails {
    
    var accountModelController: AccountModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let browseUIViewController: BrowseUIViewController = BrowseUIViewController()
        browseUIViewController.accountModelController =  accountModelController
        pushViewController(browseUIViewController, animated: false)
        // Do any additional setup after loading the view.
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openBuyItemDetails(buyItem: BuyItem) {
        let buyNowUIViewController = BuyNowUIViewController()
        buyNowUIViewController.buyItem = buyItem
        print("Opening buy now view controller")
        
        pushViewController(buyNowUIViewController , animated: false)
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

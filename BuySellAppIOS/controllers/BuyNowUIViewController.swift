//
//  BuyNowUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuyNowUIViewController: UIViewController {
    var buyModelController: BuyModelController!
    var buyNowUIView: BuyNowUIView!
    var buyItem: BuyItem!
    var accountModelController: AccountModelController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buyNowUIView = BuyNowUIView(frame: CGRect.zero)
        buyModelController =  BuyModelController(accountModelController: accountModelController, buyItem: buyItem)
        buyNowUIView.data = buyItem
        self.title = buyItem?.title
        self.view.addSubview(buyNowUIView)
        setupConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        buyNowUIView.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 5).isActive  = true
        buyNowUIView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        buyNowUIView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        buyNowUIView.bottomAnchor.constraint(equalTo: margins.bottomAnchor,  constant: 5).isActive = true
    }
    
    func viewModelDidUpdate(key: String, value: Any) {
        
    }
    
    func setViewModelProperties(buyNowPrice: Double) {
        
    }


}

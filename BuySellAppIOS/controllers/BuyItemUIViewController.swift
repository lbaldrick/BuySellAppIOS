//
//  buyItemUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuyItemUIViewController: UIViewController, BuyItemDelegate {
 
    var buyItemUIView: BuyItemUIView!
    var buyItemViewModel: BuyItemViewModel!
    var delegate: BuyItemUIViewControllerDelegate!
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        buyItemUIView.translatesAutoresizingMaskIntoConstraints = false
        buyItemUIView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 5).isActive  = true
        buyItemUIView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        buyItemUIView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        buyItemUIView.bottomAnchor.constraint(equalTo: margins.bottomAnchor,  constant: 5).isActive = true
    }
    
    func initialize(buyItem: BrowseItem) {
        self.buyItemUIView = BuyItemUIView(frame: CGRect.zero)
        
        self.buyItemViewModel = BuyItemViewModel(sellerUsername: buyItem.sellerUsername, title: buyItem.title, description: buyItem.description, condition: buyItem.condition.type(), image: buyItem.images[0], currentBid: buyItem.currentBid, endDateTime: buyItem.endDateTime, minimumPrice: buyItem.minimumPrice, buyOption: buyItem.buyOption.type())
        self.title = buyItem.title
        self.view.addSubview(buyItemUIView)

        setupConstraints()
        updateUIData()
    }
    
    func updateUIData() {
         buyItemUIView.updateUIWithData(sellerUsername: buyItemViewModel.sellerUsername, title: buyItemViewModel.title, description: buyItemViewModel.description, condition: buyItemViewModel.condition, buyingOption: buyItemViewModel.buyOption, endDateTime: buyItemViewModel.endDateTime, minimumPrice: buyItemViewModel.minimumPrice, itemImage: buyItemViewModel.image)
    }
    
    func viewModelDidUpdate(key: String, value: Any) {
        
    }
    
    func setViewModelProperties(buyNowPrice: Double) {
        
    }
    
    func buyNow() {
        
    }
    
}

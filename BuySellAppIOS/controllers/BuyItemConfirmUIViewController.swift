//
//  BuyItemConfirmUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 09/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation
import UIKit

class BuyItemConfirmUIViewController: UIViewController {

    var buyItemConformUIView: BuyItemConfirmUIView!
    var buyItemConfirmViewModel: BuyItemConfirmViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buyItemConformUIView = BuyItemConfirmUIView(frame: CGRect.zero)
        
        self.view.addSubview(buyItemConformUIView)
        
        setupConstraints()
        updateViewUIData() 
    }
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        buyItemConformUIView.translatesAutoresizingMaskIntoConstraints = false
        buyItemConformUIView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 5).isActive  = true
        buyItemConformUIView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        buyItemConformUIView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        buyItemConformUIView.bottomAnchor.constraint(equalTo: margins.bottomAnchor,  constant: 5).isActive = true
    }
    
    func initialize(buyItemConfirmViewModel: BuyItemConfirmViewModel) {
        self.buyItemConfirmViewModel = buyItemConfirmViewModel
    }
    
    func updateViewUIData() {
        buyItemConformUIView.updateUIWithData(isLoading: self.buyItemConfirmViewModel.isLoading,isSuccessful: self.buyItemConfirmViewModel.isSuccessful,title: self.buyItemConfirmViewModel.title, price: self.buyItemConfirmViewModel.price)
    }
    
}

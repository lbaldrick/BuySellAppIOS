//
//  BuyNowUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuyNowUIViewController: UIViewController {
    var buyNowUIView: BuyNowUIView!
    var buyItem: BuyItem?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buyNowUIView = BuyNowUIView(frame: CGRect.zero)
        // Do any additional setup after loading the view.
        self.title = buyItem?.title
        buyNowUIView.backgroundColor = UIColor.lightGray
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
        buyNowUIView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 50).isActive  = true
        buyNowUIView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        buyNowUIView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        buyNowUIView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        buyNowUIView.imageView.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.imageView.topAnchor.constraint(equalTo: buyNowUIView.topAnchor, constant: 35).isActive = true
        buyNowUIView.imageView.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buyNowUIView.imageView.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        
        buyNowUIView.titleLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.titleLbl.topAnchor.constraint(equalTo: buyNowUIView.imageView.bottomAnchor, constant: 15).isActive = true
        buyNowUIView.titleLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.titleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.titleLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
    
        buyNowUIView.titleValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.titleValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.titleLbl.rightAnchor, constant: 5).isActive = true
        buyNowUIView.titleValueLbl.topAnchor.constraint(equalTo: buyNowUIView.titleLbl.topAnchor).isActive = true
        buyNowUIView.titleValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.titleValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.itemDescriptionLbl.topAnchor.constraint(equalTo: buyNowUIView.titleValueLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.itemDescriptionLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.itemDescriptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.itemDescriptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.itemDescriptionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.itemDescriptionValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.itemDescriptionValueLbl.topAnchor.constraint(equalTo: buyNowUIView.itemDescriptionLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.itemDescriptionValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.itemDescriptionValueLbl.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        buyNowUIView.conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.conditionLbl.topAnchor.constraint(equalTo: buyNowUIView.itemDescriptionValueLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.conditionLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.conditionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.conditionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.conditionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.conditionValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.conditionLbl.rightAnchor, constant: 5).isActive = true
        buyNowUIView.conditionValueLbl.topAnchor.constraint(equalTo: buyNowUIView.conditionLbl.topAnchor).isActive = true
        buyNowUIView.conditionValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.conditionValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.buyingOptionLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.buyingOptionLbl.topAnchor.constraint(equalTo: buyNowUIView.conditionValueLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.buyingOptionLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.buyingOptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.buyingOptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.buyingOptionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.buyingOptionValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.buyingOptionLbl.rightAnchor, constant: 5).isActive = true
        buyNowUIView.buyingOptionValueLbl.topAnchor.constraint(equalTo: buyNowUIView.buyingOptionLbl.topAnchor).isActive = true
        buyNowUIView.buyingOptionValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.buyingOptionValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.endDateTimeLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.endDateTimeLbl.topAnchor.constraint(equalTo: buyNowUIView.buyingOptionValueLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.endDateTimeLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.endDateTimeLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.endDateTimeLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.endDateTimeValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.endDateTimeValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.endDateTimeLbl.rightAnchor, constant: 5).isActive = true
        buyNowUIView.endDateTimeValueLbl.topAnchor.constraint(equalTo: buyNowUIView.endDateTimeLbl.topAnchor).isActive = true
        buyNowUIView.endDateTimeValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.endDateTimeValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.priceLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.priceLbl.topAnchor.constraint(equalTo: buyNowUIView.endDateTimeValueLbl.bottomAnchor, constant: 5).isActive = true
        buyNowUIView.priceLbl.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: 20).isActive = true
        buyNowUIView.priceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        buyNowUIView.priceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.priceValueLbl.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.priceValueLbl.leftAnchor.constraint(equalTo: buyNowUIView.priceLbl.rightAnchor, constant: 5).isActive = true
        buyNowUIView.priceValueLbl.topAnchor.constraint(equalTo: buyNowUIView.priceLbl.topAnchor).isActive = true
        buyNowUIView.priceValueLbl.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -20).isActive = true
        buyNowUIView.priceValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        buyNowUIView.buyNowBtn.translatesAutoresizingMaskIntoConstraints = false
        buyNowUIView.buyNowBtn.leftAnchor.constraint(equalTo: buyNowUIView.leftAnchor, constant: -25).isActive = true
        buyNowUIView.buyNowBtn.bottomAnchor.constraint(equalTo: buyNowUIView.bottomAnchor, constant: -50).isActive = true
        buyNowUIView.buyNowBtn.rightAnchor.constraint(equalTo: buyNowUIView.rightAnchor, constant: -25).isActive = true
        buyNowUIView.buyNowBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }


}

//
//  BuyUIView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuyItemUIView: UIView {
    
    var imageView: UIImageView!
    var sellerUsernameLbl: UILabel!
    var titleLbl: UILabel!
    var itemDescriptionLbl: UILabel!
    var conditionLbl: UILabel!
    var buyingOptionLbl: UILabel!
    var endDateTimeLbl: UILabel!
    var priceLbl: UILabel!
    var buyNowBtn: UIButton!
    
    var sellerUsernameValueLbl: UILabel!
    var titleValueLbl: UILabel!
    var itemDescriptionValueLbl: UILabel!
    var conditionValueLbl: UILabel!
    var buyingOptionValueLbl: UILabel!
    var endDateTimeValueLbl: UILabel!
    var priceValueLbl: UILabel!
    
    var buyItemDelegate: BuyItemDelegate!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.00, green:0.45, blue:0.74, alpha:1.0)
        
        createUIComponents()
        setupConstraints()
    }
    
    func updateUIWithData(sellerUsername: String, title: String, description: String, condition: String, buyingOption: String, endDateTime: Date, minimumPrice: Double, itemImage: Data) {
        sellerUsernameValueLbl.text = sellerUsername
        titleValueLbl.text = title
        itemDescriptionValueLbl.text = description
        conditionValueLbl.text = condition
        buyingOptionValueLbl.text = buyingOption
        endDateTimeValueLbl.text = description
        priceValueLbl.text = String(describing: minimumPrice)
        self.imageView.image = UIImage(data: itemImage)
    }
    
    func createUIComponents() {
        imageView = UIImageView(frame:  CGRect(x: 0, y: 0, width: 300, height: 300))
        imageView.backgroundColor = UIColor.black
        self.addSubview(imageView)
        
        sellerUsernameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        sellerUsernameLbl.text = "Seller:"
        self.addSubview(sellerUsernameLbl)
        
        sellerUsernameValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        sellerUsernameValueLbl.backgroundColor = UIColor.white
        sellerUsernameValueLbl.textColor = UIColor.darkGray
        self.addSubview(sellerUsernameValueLbl)
        
        titleLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleLbl.text = "Title:"
        self.addSubview(titleLbl)
        
        titleValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleValueLbl.backgroundColor = UIColor.white
        titleValueLbl.textColor = UIColor.darkGray
        self.addSubview(titleValueLbl)
        
        itemDescriptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionLbl.text = "Description:"
        self.addSubview(itemDescriptionLbl)
        
        itemDescriptionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionValueLbl.backgroundColor = UIColor.white
        itemDescriptionValueLbl.textColor = UIColor.darkGray
        itemDescriptionValueLbl.numberOfLines = 0
        self.addSubview(itemDescriptionValueLbl)
        
        conditionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionLbl.text = "Condition:"
        self.addSubview(conditionLbl)
        
        conditionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionValueLbl.backgroundColor = UIColor.white
        conditionValueLbl.textColor = UIColor.darkGray
        self.addSubview(conditionValueLbl)
        
        buyingOptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyingOptionLbl.text = "Buying Option:"
        self.addSubview(buyingOptionLbl)
        
        buyingOptionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyingOptionValueLbl.backgroundColor = UIColor.white
        buyingOptionValueLbl.textColor = UIColor.darkGray
        self.addSubview(buyingOptionValueLbl)
        
        endDateTimeLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeLbl.text = "End Time:"
        self.addSubview(endDateTimeLbl)
        
        endDateTimeValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeValueLbl.backgroundColor = UIColor.white
        endDateTimeValueLbl.textColor = UIColor.darkGray
        self.addSubview(endDateTimeValueLbl)
        
        priceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        priceLbl.text = "Price:"
        self.addSubview(priceLbl)
        
        priceValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        priceValueLbl.backgroundColor = UIColor.white
        priceValueLbl.textColor = UIColor.darkGray
        self.addSubview(priceValueLbl)
        
        buyNowBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyNowBtn.isEnabled = true
        buyNowBtn.setTitle("Submit", for: .normal)
        buyNowBtn.addTarget(self, action: #selector(self.onBuyNowBtnPressed),
                            for: .touchUpInside)
        
        self.addSubview(buyNowBtn)
    }
    
    func setupConstraints() {
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        self.imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        self.imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        self.imageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30).isActive = true
        
        self.sellerUsernameLbl.translatesAutoresizingMaskIntoConstraints = false
        self.sellerUsernameLbl.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 10).isActive = true
        self.sellerUsernameLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.sellerUsernameLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.sellerUsernameLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.sellerUsernameValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.sellerUsernameValueLbl.leftAnchor.constraint(equalTo: self.sellerUsernameLbl.rightAnchor, constant: 5).isActive = true
        self.sellerUsernameValueLbl.topAnchor.constraint(equalTo: self.sellerUsernameLbl.topAnchor).isActive = true
        self.sellerUsernameValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.sellerUsernameValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.titleLbl.translatesAutoresizingMaskIntoConstraints = false
        self.titleLbl.topAnchor.constraint(equalTo: self.sellerUsernameLbl.bottomAnchor, constant: 5).isActive = true
        self.titleLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.titleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.titleLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.titleValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.titleValueLbl.leftAnchor.constraint(equalTo: self.titleLbl.rightAnchor, constant: 5).isActive = true
        self.titleValueLbl.topAnchor.constraint(equalTo: self.titleLbl.topAnchor).isActive = true
        self.titleValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.titleValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        self.itemDescriptionLbl.topAnchor.constraint(equalTo: self.titleValueLbl.bottomAnchor, constant: 5).isActive = true
        self.itemDescriptionLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.itemDescriptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.itemDescriptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.itemDescriptionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.itemDescriptionValueLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.itemDescriptionValueLbl.topAnchor.constraint(equalTo: self.itemDescriptionLbl.bottomAnchor, constant: 5).isActive = true
        self.itemDescriptionValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.itemDescriptionValueLbl.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        self.conditionLbl.topAnchor.constraint(equalTo: self.itemDescriptionValueLbl.bottomAnchor, constant: 5).isActive = true
        self.conditionLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.conditionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.conditionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.conditionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.conditionValueLbl.leftAnchor.constraint(equalTo: self.conditionLbl.rightAnchor, constant: 5).isActive = true
        self.conditionValueLbl.topAnchor.constraint(equalTo: self.conditionLbl.topAnchor).isActive = true
        self.conditionValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.conditionValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.buyingOptionLbl.translatesAutoresizingMaskIntoConstraints = false
        self.buyingOptionLbl.topAnchor.constraint(equalTo: self.conditionValueLbl.bottomAnchor, constant: 5).isActive = true
        self.buyingOptionLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.buyingOptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.buyingOptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.buyingOptionValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.buyingOptionValueLbl.leftAnchor.constraint(equalTo: self.buyingOptionLbl.rightAnchor, constant: 5).isActive = true
        self.buyingOptionValueLbl.topAnchor.constraint(equalTo: self.buyingOptionLbl.topAnchor).isActive = true
        self.buyingOptionValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.buyingOptionValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.endDateTimeLbl.translatesAutoresizingMaskIntoConstraints = false
        self.endDateTimeLbl.topAnchor.constraint(equalTo: self.buyingOptionValueLbl.bottomAnchor, constant: 5).isActive = true
        self.endDateTimeLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.endDateTimeLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.endDateTimeLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.endDateTimeValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.endDateTimeValueLbl.leftAnchor.constraint(equalTo: self.endDateTimeLbl.rightAnchor, constant: 5).isActive = true
        self.endDateTimeValueLbl.topAnchor.constraint(equalTo: self.endDateTimeLbl.topAnchor).isActive = true
        self.endDateTimeValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.endDateTimeValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.priceLbl.translatesAutoresizingMaskIntoConstraints = false
        self.priceLbl.topAnchor.constraint(equalTo: self.endDateTimeValueLbl.bottomAnchor, constant: 5).isActive = true
        self.priceLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.priceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.priceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.priceValueLbl.translatesAutoresizingMaskIntoConstraints = false
        self.priceValueLbl.leftAnchor.constraint(equalTo: self.priceLbl.rightAnchor, constant: 5).isActive = true
        self.priceValueLbl.topAnchor.constraint(equalTo: self.priceLbl.topAnchor).isActive = true
        self.priceValueLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.priceValueLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.buyNowBtn.translatesAutoresizingMaskIntoConstraints = false
        self.buyNowBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: -25).isActive = true
        self.buyNowBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        self.buyNowBtn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -25).isActive = true
        self.buyNowBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    @objc func onBuyNowBtnPressed() {
        buyItemDelegate.buyNow()
    }

}

//
//  BuyUIView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BuyNowUIView: UIView {
    
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

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.00, green:0.45, blue:0.74, alpha:1.0)
        
        imageView = UIImageView(frame:  CGRect(x: 0, y: 0, width: 300, height: 300))
        imageView.backgroundColor = UIColor.black
        self.addSubview(imageView)
        
        sellerUsernameLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        sellerUsernameLbl.backgroundColor = UIColor.lightGray
        sellerUsernameLbl.text = "Seller:"
        self.addSubview(sellerUsernameLbl)
        
        sellerUsernameValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        sellerUsernameValueLbl.backgroundColor = UIColor.white
        sellerUsernameValueLbl.textColor = UIColor.darkGray
        self.addSubview(sellerUsernameValueLbl)
        
        titleLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleLbl.backgroundColor = UIColor.lightGray
        titleLbl.text = "Title:"
        self.addSubview(titleLbl)
        
        titleValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleValueLbl.backgroundColor = UIColor.white
        titleValueLbl.textColor = UIColor.darkGray
        self.addSubview(titleValueLbl)
        
        itemDescriptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionLbl.backgroundColor = UIColor.lightGray
        itemDescriptionLbl.text = "Description:"
        self.addSubview(itemDescriptionLbl)
        
        itemDescriptionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionValueLbl.backgroundColor = UIColor.white
        itemDescriptionValueLbl.textColor = UIColor.darkGray
        self.addSubview(itemDescriptionValueLbl)
        
        conditionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionLbl.backgroundColor = UIColor.lightGray
        conditionLbl.text = "Condition:"
        self.addSubview(conditionLbl)
        
        conditionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionValueLbl.backgroundColor = UIColor.white
        conditionValueLbl.textColor = UIColor.darkGray
        self.addSubview(conditionValueLbl)
        
        buyingOptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyingOptionLbl.backgroundColor = UIColor.lightGray
        buyingOptionLbl.text = "Buying Option:"
        self.addSubview(buyingOptionLbl)
        
        buyingOptionValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyingOptionValueLbl.backgroundColor = UIColor.white
        buyingOptionValueLbl.textColor = UIColor.darkGray
        self.addSubview(buyingOptionValueLbl)
        
        endDateTimeLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeLbl.backgroundColor = UIColor.lightGray
        endDateTimeLbl.text = "End Time:"
        self.addSubview(endDateTimeLbl)
        
        endDateTimeValueLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeValueLbl.backgroundColor = UIColor.white
        endDateTimeValueLbl.textColor = UIColor.darkGray
        self.addSubview(endDateTimeValueLbl)
        
        priceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        priceLbl.backgroundColor = UIColor.lightGray
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
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    @objc func onBuyNowBtnPressed() {
        
    }

}

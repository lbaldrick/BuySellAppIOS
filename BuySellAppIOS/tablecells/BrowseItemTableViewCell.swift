//
//  BrowseItemTableViewCell.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 24/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BrowseItemTableViewCell: UITableViewCell {
    
    var itemImageView: UIImageView!
    var titleLbl: UILabel!
    var conditionLbl: UILabel!
    var buyingOptionLbl: UILabel!
    var itemDescriptionLbl: UILabel!
    
    var itemId: String?
    var itemImage: Data?
    var title: String?
    var condition: Condition?
    var buyOption: BuyOption?
    var itemDescription: String?
    
    var delegate: OpenBuyItemDetails?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.itemImageView = UIImageView(frame:  CGRect(x: 2, y: 0, width: 200, height: 200))
        self.itemImageView.backgroundColor = UIColor.black
        self.titleLbl = UILabel(frame:  CGRect(x: 205, y: 0, width: 200, height: 20))
        self.titleLbl.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        self.conditionLbl = UILabel(frame:  CGRect(x: 205, y: 25, width: 100, height: 20))
        self.buyingOptionLbl = UILabel(frame:  CGRect(x: 205, y: 50, width: 100, height: 20))
        self.buyingOptionLbl.font = UIFont(name:"HelveticaNeue-Bold", size: 15.0)
        self.buyingOptionLbl.textColor = UIColor.blue
        self.itemDescriptionLbl = UILabel(frame:  CGRect(x: 205, y: 75, width: 200, height: 100))
        self.itemDescriptionLbl.numberOfLines = 0
        
        
        self.titleLbl.text = "NBA Jam Snes"
        self.conditionLbl.text = "Used"
        self.buyingOptionLbl.text = "Buy Now"
        self.itemDescriptionLbl.text = "Tested and works fine. Message me for more details. Check out my other items"
        self.addSubview(titleLbl)
        self.addSubview(conditionLbl)
        self.addSubview(buyingOptionLbl)
        self.addSubview(itemDescriptionLbl)
        self.addSubview(itemImageView)
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        buyingOptionLbl.translatesAutoresizingMaskIntoConstraints = false
        itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        //addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": titleLbl]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected == true) {
            print("buy itme selected")
            delegate?.openBuyItemDetails(buyItem: BuyItem(id: "id", sellerUsername: "joeBloggs", title: "NBA Jam Snes", description: "Tested and works fine. Message me for more details. Check out my other items", condition: Condition.ACCEPTABLE, images: [], currentBid: 0.0, endDateTime: Date(), minimumPrice: 22.00, buyOption: BuyOption.BUY_NOW))
        }
    }

}

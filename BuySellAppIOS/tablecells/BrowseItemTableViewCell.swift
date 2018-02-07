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
    var priceLbl: UILabel!
    
    var itemId: String!
    
    var delegate: OpenBuyItemDetails?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.itemImageView = UIImageView(frame:  CGRect(x: 2, y: 0, width: 200, height: 200))
        self.titleLbl = UILabel(frame:  CGRect(x: 205, y: 0, width: 200, height: 20))
        self.titleLbl.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
       
        self.conditionLbl = UILabel(frame:  CGRect(x: 205, y: 25, width: 100, height: 20))
        self.conditionLbl.font = UIFont(name:"HelveticaNeue", size: 14.0)
        self.conditionLbl.textColor = UIColor.blue
        
        self.buyingOptionLbl = UILabel(frame:  CGRect(x: 205, y: 50, width: 100, height: 20))
        self.buyingOptionLbl.font = UIFont(name:"HelveticaNeue-Bold", size: 15.0)
        self.buyingOptionLbl.textColor = UIColor.red
        
        self.priceLbl = UILabel(frame:  CGRect(x: 205, y: 50, width: 100, height: 20))
        self.priceLbl.font = UIFont(name:"HelveticaNeue-Bold", size: 15.0)

        self.itemDescriptionLbl = UILabel(frame:  CGRect(x: 205, y: 75, width: 200, height: 100))
        self.itemDescriptionLbl.numberOfLines = 0
        self.itemDescriptionLbl.font = UIFont(name:"HelveticaNeue", size: 13.0)
        
    
        self.addSubview(titleLbl)
        self.addSubview(conditionLbl)
        self.addSubview(priceLbl)
        self.addSubview(buyingOptionLbl)
        self.addSubview(itemDescriptionLbl)
        self.addSubview(itemImageView)
        
        setupConstraints()
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true
        itemImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        itemImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor , constant: -15).isActive = true
        itemImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        itemImageView.clipsToBounds = true
        
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        titleLbl.leftAnchor.constraint(equalTo: itemImageView.rightAnchor, constant: 5).isActive = true
        titleLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLbl.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        conditionLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 10).isActive = true
        conditionLbl.leftAnchor.constraint(equalTo: itemImageView.rightAnchor, constant: 5).isActive = true
        conditionLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        conditionLbl.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        priceLbl.translatesAutoresizingMaskIntoConstraints = false
        priceLbl.topAnchor.constraint(equalTo: conditionLbl.bottomAnchor, constant: 10).isActive = true
        priceLbl.leftAnchor.constraint(equalTo: itemImageView.rightAnchor, constant: 5).isActive = true
        priceLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        priceLbl.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        buyingOptionLbl.translatesAutoresizingMaskIntoConstraints = false
        buyingOptionLbl.topAnchor.constraint(equalTo: priceLbl.bottomAnchor, constant: 10).isActive = true
        buyingOptionLbl.leftAnchor.constraint(equalTo: itemImageView.rightAnchor, constant: 5).isActive = true
        buyingOptionLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buyingOptionLbl.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        itemDescriptionLbl.topAnchor.constraint(equalTo: buyingOptionLbl.bottomAnchor, constant: 10).isActive = true
        itemDescriptionLbl.leftAnchor.constraint(equalTo: itemImageView.rightAnchor, constant: 5).isActive = true
        itemDescriptionLbl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        itemDescriptionLbl.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected == true) {
            print("buy item selected")
            delegate?.openBuyItemDetails(id: itemId)
        }
    }
    
    
    func addData(itemId: String, itemImage: Data, title: String, condition: String, buyOption: String, itemDescription: String, price: String) {
        self.itemId = itemId
        self.titleLbl.text = title
        self.conditionLbl.text = condition
        self.priceLbl.text = price
        self.buyingOptionLbl.text = buyOption
        self.itemDescriptionLbl.text = itemDescription
        self.itemImageView.image = UIImage(data: itemImage)
        
    }

}

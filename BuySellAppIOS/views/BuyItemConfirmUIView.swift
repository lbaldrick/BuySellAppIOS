//
//  BuyItemConfirmUIView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 08/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


import UIKit

class BuyItemConfirmUIView: UIView {
    private let successfulImageId = "green-tick"
    private let rejectionImageId = "red-cross"
    var confirmationRejectImageView: UIImageView!
    var confirmationRejectMessageLbl: UILabel!
    var titleLbl: UILabel!
    var priceLbl: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = ColorConstants.blackColor
        
        createUIComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createUIComponents() {
        confirmationRejectImageView = UIImageView(frame:  CGRect(x: 0, y: 0, width: 300, height: 300))
        confirmationRejectImageView.backgroundColor = UIColor.black
        self.addSubview(confirmationRejectImageView)
        
        confirmationRejectMessageLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        confirmationRejectMessageLbl.textColor = ColorConstants.whiteColor
        self.addSubview(confirmationRejectMessageLbl)
        
        titleLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleLbl.textColor = ColorConstants.whiteColor
        self.addSubview(titleLbl)
        
        priceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        priceLbl.textColor = ColorConstants.whiteColor
        self.addSubview(priceLbl)
    }
    
    private func setupConstraints() {
        self.confirmationRejectImageView.translatesAutoresizingMaskIntoConstraints = false
        self.confirmationRejectImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        self.confirmationRejectImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        self.confirmationRejectImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.confirmationRejectMessageLbl.translatesAutoresizingMaskIntoConstraints = false
        self.confirmationRejectMessageLbl.topAnchor.constraint(equalTo: self.confirmationRejectImageView.bottomAnchor, constant: 10).isActive = true
        self.confirmationRejectMessageLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.confirmationRejectMessageLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.confirmationRejectMessageLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.titleLbl.translatesAutoresizingMaskIntoConstraints = false
        self.titleLbl.topAnchor.constraint(equalTo: self.confirmationRejectMessageLbl.bottomAnchor, constant: 10).isActive = true
        self.titleLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.titleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.titleLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.priceLbl.translatesAutoresizingMaskIntoConstraints = false
        self.priceLbl.topAnchor.constraint(equalTo: self.titleLbl.bottomAnchor, constant: 10).isActive = true
        self.priceLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.priceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.priceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    func updateUIWithData(isLoading: Bool, isSuccessful: Bool, title: String, price: String) {
        if (isLoading) {
            
        } else if (isSuccessful) {
            confirmationRejectImageView.image = UIImage(named: successfulImageId)
        } else {
            confirmationRejectImageView.image = UIImage(named: rejectionImageId)
        }
    }
}

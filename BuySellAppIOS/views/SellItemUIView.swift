//
//  SellUIView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class SellItemUIView: UIView {
    
    private let itemDescriptionValidationError = "Item description must be given"
    private let startingBidValidationError = "Starting bid must be greater than 0"
    private let endDateTimeValidationError = "End date must be greater than 1 day from now"
    private let minimumPriceValidationError = "Minimum price must be greater than 0"
    private let buyNowPriceValidationError = "Buy now price must be greater than 0"
    private let error = "Sorry we were unable to create the sell item"
    
    var titleLbl: UILabel!
    var itemDescriptionLbl: UILabel!
    var conditionLbl: UILabel!
    var startingBidLbl: UILabel!
    var endDateTimeLbl: UILabel!
    var minimumPriceLbl: UILabel!
    var buyNowPriceLbl: UILabel!

    var titleTxtField: UITextField!
    var itemDescriptionTxtView: UITextView!
    var conditionPickerView: UIPickerView!
    var startingBidTxtField: UITextField!
    var endDateTimeDatePicker: UIDatePicker!
    var minimumPriceTxtField: UITextField!
    var buyNowPriceTxtField: UITextField!
    
    var titleValidationLbl: UILabel!
    var itemDescriptionValidationLbl: UILabel!
    var startingBidValidationLbl: UILabel!
    var endDateTimeValidationLbl: UILabel!
    var minimumPriceValidationLbl: UILabel!
    var buyNowPriceValidationLbl: UILabel!
    var errorLbl: UILabel!

    var addImagesBtn: UIButton!
    var cancelBtn: UIButton!
    var submitBtn: UIButton!
    
    var selectImageDelegate: SelectImageDelegate?
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.00, green:0.45, blue:0.74, alpha:1.0)
        createUIComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func onSubmitBtnPressed() {
    
    }
    
    @objc func onCancelBtnPressed() {
      
    }
    
    @objc func onAddImagesBtnPressed() {
        print("add images button pressed")
        selectImageDelegate?.selectImage()
    }
    
    func createUIComponents() {
        titleLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleLbl.text = "Title"
        self.addSubview(titleLbl)
        
        titleTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleTxtField.backgroundColor = UIColor.white
        titleTxtField.textColor = UIColor.darkGray
        self.addSubview(titleTxtField)
        
        titleValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        titleValidationLbl.textColor = UIColor.white
        titleValidationLbl.backgroundColor = UIColor.red
        titleValidationLbl.textAlignment = NSTextAlignment.center
        titleValidationLbl.isHidden = true
        self.addSubview(titleValidationLbl)
        
        itemDescriptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionLbl.text = "Description"
        self.addSubview(itemDescriptionLbl)
        
        itemDescriptionTxtView = UITextView(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionTxtView.backgroundColor = UIColor.white
        itemDescriptionTxtView.textColor = UIColor.darkGray
        self.addSubview(itemDescriptionTxtView)
        
        itemDescriptionValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        itemDescriptionValidationLbl.textColor = UIColor.white
        itemDescriptionValidationLbl.backgroundColor = UIColor.red
        itemDescriptionValidationLbl.textAlignment = NSTextAlignment.center
        itemDescriptionValidationLbl.isHidden = true
        self.addSubview(itemDescriptionValidationLbl)
        
        conditionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionLbl.text = "Condition"
        self.addSubview(conditionLbl)
        
        conditionPickerView = UIPickerView(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionPickerView.backgroundColor = UIColor.white
        self.addSubview(conditionPickerView)
        
        startingBidLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        startingBidLbl.text = "Starting Bid"
        self.addSubview(startingBidLbl)
        
        startingBidTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        startingBidTxtField.backgroundColor = UIColor.white
        startingBidTxtField.borderStyle = UITextBorderStyle.roundedRect
        startingBidTxtField.placeholder = "Enter starting bid"
        startingBidTxtField.textColor = UIColor.darkGray
        self.addSubview(startingBidTxtField)
        
        startingBidValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        startingBidValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        startingBidValidationLbl.textColor = UIColor.white
        startingBidValidationLbl.backgroundColor = UIColor.red
        startingBidValidationLbl.textAlignment = NSTextAlignment.center
        startingBidValidationLbl.isHidden = true
        self.addSubview(startingBidValidationLbl)
        
        endDateTimeLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeLbl.text = "End Time"
        self.addSubview(endDateTimeLbl)
        
        endDateTimeDatePicker = UIDatePicker(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeDatePicker.backgroundColor = UIColor.white
        endDateTimeDatePicker.datePickerMode = UIDatePickerMode.date
        self.addSubview(endDateTimeDatePicker)
        
        endDateTimeValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        endDateTimeValidationLbl.textColor = UIColor.white
        endDateTimeValidationLbl.backgroundColor = UIColor.red
        endDateTimeValidationLbl.textAlignment = NSTextAlignment.center
        endDateTimeValidationLbl.isHidden = true
        self.addSubview(endDateTimeValidationLbl)
        
        minimumPriceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        minimumPriceLbl.text = "Min. Price"
        self.addSubview(minimumPriceLbl)
        
        minimumPriceTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        minimumPriceTxtField.backgroundColor = UIColor.white
        minimumPriceTxtField.borderStyle = UITextBorderStyle.roundedRect
        minimumPriceTxtField.placeholder = "Enter min price"
        minimumPriceTxtField.textColor = UIColor.darkGray
        self.addSubview(minimumPriceTxtField)
        
        minimumPriceValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        minimumPriceValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        minimumPriceValidationLbl.textColor = UIColor.white
        minimumPriceValidationLbl.backgroundColor = UIColor.red
        minimumPriceValidationLbl.textAlignment = NSTextAlignment.center
        minimumPriceValidationLbl.isHidden = true
        self.addSubview(minimumPriceValidationLbl)
        
        buyNowPriceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyNowPriceLbl.text = "Buy Now"
        self.addSubview(buyNowPriceLbl)
        
        buyNowPriceTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyNowPriceTxtField.backgroundColor = UIColor.white
        buyNowPriceTxtField.borderStyle = UITextBorderStyle.roundedRect
        buyNowPriceTxtField.placeholder = "Enter buy now price"
        buyNowPriceTxtField.textColor = UIColor.darkGray
        self.addSubview(buyNowPriceTxtField)
        
        buyNowPriceValidationLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        buyNowPriceValidationLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        buyNowPriceValidationLbl.textColor = UIColor.white
        buyNowPriceValidationLbl.backgroundColor = UIColor.red
        buyNowPriceValidationLbl.textAlignment = NSTextAlignment.center
        buyNowPriceValidationLbl.isHidden = true
        self.addSubview(buyNowPriceValidationLbl)
        
        addImagesBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        addImagesBtn.isEnabled = true
        addImagesBtn.setTitle("Add Images", for: .normal)
        addImagesBtn.addTarget(self, action: #selector(self.onAddImagesBtnPressed),
                            for: .touchUpInside)
        self.addSubview(addImagesBtn)
        
        imageView = UIImageView(frame:  CGRect(x: 2, y: 0, width: 200, height: 200))
        self.addSubview(imageView)
        
        cancelBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        cancelBtn.isEnabled = false
        cancelBtn.setTitle("Cancel", for: .normal)
        cancelBtn.addTarget(self, action: #selector(self.onCancelBtnPressed),
                            for: .touchUpInside)
        self.addSubview(cancelBtn)
        
        submitBtn = UIButton(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        submitBtn.isEnabled = true
        submitBtn.setTitle("Submit", for: .normal)
        submitBtn.addTarget(self, action: #selector(self.onSubmitBtnPressed),
                            for: .touchUpInside)
        
        self.addSubview(submitBtn)
        
        errorLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        errorLbl.font = UIFont(name:"Helvetica-Bold", size:12.0)
        errorLbl.textColor = UIColor.white
        errorLbl.backgroundColor = UIColor.red
        errorLbl.textAlignment = NSTextAlignment.center
        errorLbl.isHidden = true
        self.addSubview(errorLbl)
    }
    
    func setupConstraints() {
        self.titleLbl.translatesAutoresizingMaskIntoConstraints = false
        self.titleLbl.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        self.titleLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.titleLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.titleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.titleTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.titleTxtField.leftAnchor.constraint(equalTo: self.titleLbl.rightAnchor, constant: 1).isActive = true
        self.titleTxtField.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        self.titleTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.titleTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.titleValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.titleValidationLbl.topAnchor.constraint(equalTo: titleTxtField.bottomAnchor, constant: 2).isActive = true
        self.titleValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.titleValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.titleValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        self.itemDescriptionLbl.topAnchor.constraint(equalTo: self.titleTxtField.topAnchor, constant: 35).isActive = true
        self.itemDescriptionLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.itemDescriptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.itemDescriptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.itemDescriptionTxtView.translatesAutoresizingMaskIntoConstraints = false
        self.itemDescriptionTxtView.leftAnchor.constraint(equalTo: self.itemDescriptionLbl.rightAnchor, constant: 1).isActive = true
        self.itemDescriptionTxtView.topAnchor.constraint(equalTo: self.titleTxtField.bottomAnchor, constant: 10).isActive = true
        self.itemDescriptionTxtView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.itemDescriptionTxtView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.itemDescriptionValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.itemDescriptionValidationLbl.topAnchor.constraint(equalTo: itemDescriptionTxtView.bottomAnchor, constant: 2).isActive = true
        self.itemDescriptionValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.itemDescriptionValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.itemDescriptionValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        self.conditionLbl.topAnchor.constraint(equalTo: self.itemDescriptionTxtView.bottomAnchor, constant: 35).isActive = true
        self.conditionLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.conditionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.conditionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.conditionPickerView.translatesAutoresizingMaskIntoConstraints = false
        self.conditionPickerView.leftAnchor.constraint(equalTo: self.conditionLbl.rightAnchor, constant: 1).isActive = true
        self.conditionPickerView.topAnchor.constraint(equalTo: self.itemDescriptionTxtView.bottomAnchor, constant: 10).isActive = true
        self.conditionPickerView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.conditionPickerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.startingBidLbl.translatesAutoresizingMaskIntoConstraints = false
        self.startingBidLbl.topAnchor.constraint(equalTo: self.conditionPickerView.topAnchor, constant: 35).isActive = true
        self.startingBidLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.startingBidLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.startingBidLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.startingBidTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.startingBidTxtField.leftAnchor.constraint(equalTo: self.startingBidLbl.rightAnchor, constant: 1).isActive = true
        self.startingBidTxtField.topAnchor.constraint(equalTo: self.conditionPickerView.bottomAnchor, constant: 10).isActive = true
        self.startingBidTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.startingBidTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.startingBidValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.startingBidValidationLbl.topAnchor.constraint(equalTo: startingBidTxtField.bottomAnchor, constant: 2).isActive = true
        self.startingBidValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.startingBidValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.startingBidValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.endDateTimeLbl.translatesAutoresizingMaskIntoConstraints = false
        self.endDateTimeLbl.topAnchor.constraint(equalTo: self.startingBidTxtField.topAnchor, constant: 35).isActive = true
        self.endDateTimeLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.endDateTimeLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.endDateTimeLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.endDateTimeDatePicker.translatesAutoresizingMaskIntoConstraints = false
        self.endDateTimeDatePicker.topAnchor.constraint(equalTo: self.endDateTimeLbl.bottomAnchor, constant: 15).isActive = true
        self.endDateTimeDatePicker.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.endDateTimeDatePicker.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        self.endDateTimeDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.endDateTimeValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.endDateTimeValidationLbl.topAnchor.constraint(equalTo: endDateTimeDatePicker.bottomAnchor, constant: 2).isActive = true
        self.endDateTimeValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.endDateTimeValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.endDateTimeValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.minimumPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        self.minimumPriceLbl.topAnchor.constraint(equalTo: self.endDateTimeDatePicker.bottomAnchor, constant: 35).isActive = true
        self.minimumPriceLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.minimumPriceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.minimumPriceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.minimumPriceTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.minimumPriceTxtField.leftAnchor.constraint(equalTo: self.minimumPriceLbl.rightAnchor, constant: 1).isActive = true
        self.minimumPriceTxtField.topAnchor.constraint(equalTo: self.endDateTimeDatePicker.bottomAnchor, constant: 35).isActive = true
        self.minimumPriceTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.minimumPriceTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.minimumPriceValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.minimumPriceValidationLbl.topAnchor.constraint(equalTo: minimumPriceTxtField.bottomAnchor, constant: 2).isActive = true
        self.minimumPriceValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.minimumPriceValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.minimumPriceValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.buyNowPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        self.buyNowPriceLbl.topAnchor.constraint(equalTo: self.minimumPriceTxtField.bottomAnchor, constant: 35).isActive = true
        self.buyNowPriceLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.buyNowPriceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.buyNowPriceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        self.buyNowPriceTxtField.translatesAutoresizingMaskIntoConstraints = false
        self.buyNowPriceTxtField.leftAnchor.constraint(equalTo: self.buyNowPriceLbl.rightAnchor, constant: 1).isActive = true
        self.buyNowPriceTxtField.topAnchor.constraint(equalTo: self.minimumPriceTxtField.bottomAnchor, constant: 35).isActive = true
        self.buyNowPriceTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.buyNowPriceTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.buyNowPriceValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        self.buyNowPriceValidationLbl.topAnchor.constraint(equalTo: buyNowPriceTxtField.bottomAnchor, constant: 2).isActive = true
        self.buyNowPriceValidationLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.buyNowPriceValidationLbl.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.buyNowPriceValidationLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        
        self.addImagesBtn.translatesAutoresizingMaskIntoConstraints = false
        self.addImagesBtn.topAnchor.constraint(equalTo: buyNowPriceTxtField.bottomAnchor, constant: 15).isActive = true
        self.addImagesBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        self.addImagesBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.addImagesBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.imageView.topAnchor.constraint(equalTo: buyNowPriceTxtField.bottomAnchor, constant: 5).isActive = true
        self.imageView.leftAnchor.constraint(equalTo: addImagesBtn.rightAnchor, constant: 5).isActive = true
        self.imageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        self.imageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        self.submitBtn.translatesAutoresizingMaskIntoConstraints = false
        self.submitBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25).isActive = true
        self.submitBtn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80).isActive = true
        
        self.cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        self.cancelBtn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25).isActive = true
        self.cancelBtn.leftAnchor.constraint(equalTo: self.submitBtn.rightAnchor, constant: 100).isActive = true
        
        self.errorLbl.translatesAutoresizingMaskIntoConstraints = false
        self.errorLbl.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        self.errorLbl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        self.errorLbl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
    }

}

//
//  SellUIView.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class SellUIView: UIView {
    
    var titleLbl: UILabel!
    var itemDescriptionLbl: UILabel!
    var conditionLbl: UILabel!
    var startingBidLbl: UILabel!
    var endDateTimeLbl: UILabel!
    var minimumPriceLbl: UILabel!

    var titlePickerView: UIPickerView!
    var itemDescriptionTxtView: UITextView!
    var conditionPickerView: UIPickerView!
    var startingBidTxtField: UITextField!
    var endDateTimeDatePicker: UIDatePicker!
    var minimumPriceTxtField: UITextField!
    var cancelBtn: UIButton!
    var submitBtn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.lightGray
        
        titleLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titleLbl.backgroundColor = UIColor.lightGray
        titleLbl.text = "Title"
        self.addSubview(titleLbl)
        
        titlePickerView = UIPickerView(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        titlePickerView.backgroundColor = UIColor.white
        self.addSubview(titlePickerView)
        
        itemDescriptionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionLbl.backgroundColor = UIColor.lightGray
        itemDescriptionLbl.text = "Description"
        self.addSubview(itemDescriptionLbl)
        
        itemDescriptionTxtView = UITextView(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        itemDescriptionTxtView.backgroundColor = UIColor.white
        itemDescriptionTxtView.textColor = UIColor.darkGray
        self.addSubview(itemDescriptionTxtView)
        
        conditionLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionLbl.backgroundColor = UIColor.lightGray
        conditionLbl.text = "Condition"
        self.addSubview(conditionLbl)
        
        conditionPickerView = UIPickerView(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        conditionPickerView.backgroundColor = UIColor.white
        self.addSubview(conditionPickerView)
        
        startingBidLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        startingBidLbl.backgroundColor = UIColor.lightGray
        startingBidLbl.text = "Starting Bid"
        self.addSubview(startingBidLbl)
        
        startingBidTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        startingBidTxtField.backgroundColor = UIColor.white
        startingBidTxtField.borderStyle = UITextBorderStyle.roundedRect
        startingBidTxtField.placeholder = "Enter starting bid"
        startingBidTxtField.textColor = UIColor.darkGray
        self.addSubview(startingBidTxtField)
        
        endDateTimeLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeLbl.backgroundColor = UIColor.lightGray
        endDateTimeLbl.text = "End Time"
        self.addSubview(endDateTimeLbl)
        
        endDateTimeDatePicker = UIDatePicker(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        endDateTimeDatePicker.backgroundColor = UIColor.white
        endDateTimeDatePicker.datePickerMode = UIDatePickerMode.date
        self.addSubview(endDateTimeDatePicker)
        
        minimumPriceLbl = UILabel(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        minimumPriceLbl.backgroundColor = UIColor.lightGray
        minimumPriceLbl.text = "Min. Price"
        self.addSubview(minimumPriceLbl)
        
        minimumPriceTxtField = UITextField(frame:  CGRect(x: 0, y: 0, width: 150, height: 21))
        minimumPriceTxtField.backgroundColor = UIColor.white
        minimumPriceTxtField.borderStyle = UITextBorderStyle.roundedRect
        minimumPriceTxtField.placeholder = "Enter min price"
        minimumPriceTxtField.textColor = UIColor.darkGray
        self.addSubview(minimumPriceTxtField)
        
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
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func onSubmitBtnPressed() {
    
    }
    
    @objc func onCancelBtnPressed() {
      
    }

}

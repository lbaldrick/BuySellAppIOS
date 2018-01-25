//
//  SellUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class SellUIViewController: UIViewController {
    
    var sellView: SellUIView!
    var accountModelController: AccountModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        sellView = SellUIView(frame: CGRect.zero)
        self.view.addSubview(sellView)
        setupConstraints()
        
        self.title = "Sell Item"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        sellView.translatesAutoresizingMaskIntoConstraints = false
        sellView.topAnchor.constraint( equalTo: margins.topAnchor,  constant: 50).isActive  = true
        sellView.leftAnchor.constraint( equalTo: margins.leftAnchor).isActive  = true
        sellView.rightAnchor.constraint( equalTo: margins.rightAnchor).isActive  = true
        sellView.heightAnchor.constraint(equalToConstant: 500).isActive = true
    
        
        sellView.titleLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.titleLbl.topAnchor.constraint(equalTo: sellView.topAnchor, constant: 20).isActive = true
        sellView.titleLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.titleLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.titleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.titlePickerView.translatesAutoresizingMaskIntoConstraints = false
        sellView.titlePickerView.leftAnchor.constraint(equalTo: sellView.titleLbl.rightAnchor, constant: 1).isActive = true
        sellView.titlePickerView.topAnchor.constraint(equalTo: sellView.topAnchor, constant: 20).isActive = true
        sellView.titlePickerView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.titlePickerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        sellView.itemDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.itemDescriptionLbl.topAnchor.constraint(equalTo: sellView.titlePickerView.topAnchor, constant: 35).isActive = true
        sellView.itemDescriptionLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.itemDescriptionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.itemDescriptionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.itemDescriptionTxtView.translatesAutoresizingMaskIntoConstraints = false
        sellView.itemDescriptionTxtView.leftAnchor.constraint(equalTo: sellView.itemDescriptionLbl.rightAnchor, constant: 1).isActive = true
        sellView.itemDescriptionTxtView.topAnchor.constraint(equalTo: sellView.titlePickerView.bottomAnchor, constant: 10).isActive = true
        sellView.itemDescriptionTxtView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        sellView.itemDescriptionTxtView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        sellView.conditionLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.conditionLbl.topAnchor.constraint(equalTo: sellView.itemDescriptionTxtView.topAnchor, constant: 35).isActive = true
        sellView.conditionLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.conditionLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.conditionLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.conditionPickerView.translatesAutoresizingMaskIntoConstraints = false
        sellView.conditionPickerView.leftAnchor.constraint(equalTo: sellView.conditionLbl.rightAnchor, constant: 1).isActive = true
        sellView.conditionPickerView.topAnchor.constraint(equalTo: sellView.itemDescriptionTxtView.bottomAnchor, constant: 10).isActive = true
        sellView.conditionPickerView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.conditionPickerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        sellView.startingBidLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.startingBidLbl.topAnchor.constraint(equalTo: sellView.conditionPickerView.topAnchor, constant: 35).isActive = true
        sellView.startingBidLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.startingBidLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.startingBidLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.startingBidTxtField.translatesAutoresizingMaskIntoConstraints = false
        sellView.startingBidTxtField.leftAnchor.constraint(equalTo: sellView.startingBidLbl.rightAnchor, constant: 1).isActive = true
        sellView.startingBidTxtField.topAnchor.constraint(equalTo: sellView.conditionPickerView.bottomAnchor, constant: 10).isActive = true
        sellView.startingBidTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.startingBidTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        sellView.endDateTimeLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.endDateTimeLbl.topAnchor.constraint(equalTo: sellView.startingBidTxtField.topAnchor, constant: 35).isActive = true
        sellView.endDateTimeLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.endDateTimeLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.endDateTimeLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.endDateTimeDatePicker.translatesAutoresizingMaskIntoConstraints = false
        sellView.endDateTimeDatePicker.topAnchor.constraint(equalTo: sellView.endDateTimeLbl.bottomAnchor, constant: 15).isActive = true
        sellView.endDateTimeDatePicker.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 15).isActive = true
        sellView.endDateTimeDatePicker.rightAnchor.constraint(equalTo: sellView.rightAnchor, constant: -15).isActive = true
        sellView.endDateTimeDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        sellView.minimumPriceLbl.translatesAutoresizingMaskIntoConstraints = false
        sellView.minimumPriceLbl.topAnchor.constraint(equalTo: sellView.endDateTimeDatePicker.bottomAnchor, constant: 35).isActive = true
        sellView.minimumPriceLbl.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 10).isActive = true
        sellView.minimumPriceLbl.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.minimumPriceLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        sellView.minimumPriceTxtField.translatesAutoresizingMaskIntoConstraints = false
        sellView.minimumPriceTxtField.leftAnchor.constraint(equalTo: sellView.minimumPriceLbl.rightAnchor, constant: 1).isActive = true
        sellView.minimumPriceTxtField.topAnchor.constraint(equalTo: sellView.endDateTimeDatePicker.bottomAnchor, constant: 35).isActive = true
        sellView.minimumPriceTxtField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sellView.minimumPriceTxtField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        sellView.submitBtn.translatesAutoresizingMaskIntoConstraints = false
        sellView.submitBtn.bottomAnchor.constraint(equalTo: sellView.bottomAnchor, constant: -25).isActive = true
        sellView.submitBtn.leftAnchor.constraint(equalTo: sellView.leftAnchor, constant: 80).isActive = true
        
        sellView.cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        sellView.cancelBtn.bottomAnchor.constraint(equalTo: sellView.bottomAnchor, constant: -25).isActive = true
        sellView.cancelBtn.leftAnchor.constraint(equalTo: sellView.submitBtn.rightAnchor, constant: 100).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  SellUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class SellItemUIViewController: UIViewController, ViewModelDidUpdateDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, SelectImageDelegate, SubmitSellItemDetailsDelegate {
    

    var sellView: SellItemUIView!
    var accountModelController: AccountModelController!
    let picker = UIImagePickerController()
    var viewModel: SellItemViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sellView = SellItemUIView(frame: CGRect.zero)
        sellView.selectImageDelegate = self
        sellView.submitSellItemDetailsDelegate = self
    
        self.view.addSubview(sellView)
        picker.delegate = self
        
        viewModel = SellItemViewModel(title: "", description: "", condition: "", images: [], startingBid: 0, endDateTime: Date(), minimumPrice: 0, buyOption: "", buyNowPrice: 0, viewModelDidUpdateDelegate: self)
        setupConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        sellView.translatesAutoresizingMaskIntoConstraints = false
        sellView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 15).isActive  = true
        sellView.leftAnchor.constraint(equalTo: margins.leftAnchor).isActive  = true
        sellView.rightAnchor.constraint(equalTo: margins.rightAnchor).isActive  = true
        sellView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -15).isActive = true
    }
    
    func viewModelDidUpdate(key: String, value: Any) {
        print("View model variable changed: \(key) \(value)")
        switch key {
        case "hasTitleValidationError":
            self.sellView.titleValidationLbl.isHidden = !(value as! Bool)
        case "hasDescriptionValidationError":
            self.sellView.itemDescriptionValidationLbl.isHidden = !(value as! Bool)
        case "hasImagesValidationError":
            self.sellView.isHidden = !(value as! Bool)
        case "hasStartingBidValidationError":
            self.sellView.startingBidValidationLbl.isHidden = !(value as! Bool)
        case "hasEndDateTimeValidationError":
            self.sellView.endDateTimeValidationLbl.isHidden = !(value as! Bool)
        case "hasMinimumPriceValidationError":
            self.sellView.minimumPriceValidationLbl.isHidden = !(value as! Bool)
        case "hasBuyNowPriceValidationError":
            self.sellView.buyNowPriceValidationLbl.isHidden = !(value as! Bool)
        case "hasError":
            self.sellView.errorLbl.isHidden = !(value as! Bool)
        default:
            print("No action required")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.title = "Sell Items"
    }
    
    func selectImage() {
        print("select image")
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("Image picker selected")
        if let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage  {
            sellView.imageView.contentMode = .scaleAspectFit
            sellView.imageView.image = chosenImage
        }
    
        dismiss(animated:true, completion: nil)
    }
    
    func setViewModelProperties(title: String, description: String, condition: String, images: [Data], startingBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: String, buyNowPrice: Double) {
        viewModel.title = title
        viewModel.description = description
        viewModel.condition = condition
        viewModel.images = images
        viewModel.startingBid = startingBid
        viewModel.endDateTime = endDateTime
        viewModel.minimumPrice = minimumPrice
        viewModel.buyOption = buyOption
        viewModel.buyNowPrice = buyNowPrice
    }
    
    func submitSellItemDetails(title: String, description: String, condition: String, images: [Data], startingBid: Double, endDateTime: Date, minimumPrice: Double, buyOption: String, buyNowPrice: Double) {
        setViewModelProperties(title: title, description: description, condition: condition, images: images, startingBid: startingBid, endDateTime: endDateTime, minimumPrice: minimumPrice, buyOption: buyOption, buyNowPrice: buyNowPrice)
    }
    
    func updateInitialState(accountModelController: AccountModelController) {
        self.accountModelController = accountModelController
    }

}

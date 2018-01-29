//
//  SellUIViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 23/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class SellItemUIViewController: UIViewController, ViewModelDidUpdateDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, SelectImageDelegate {
    
    var sellView: SellItemUIView!
    var accountModelController: AccountModelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        sellView = SellItemUIView(frame: CGRect.zero)
        sellView.selectImageDelegate = self
        self.view.addSubview(sellView)
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
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in
            
        })
        
        sellView.imageView.image = image
    }

}

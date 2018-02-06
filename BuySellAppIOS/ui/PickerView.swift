//
//  PickerViewComponent.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 30/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

import UIKit

class PickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    var datasource: [String]?
    var pickerView: UIPickerView?
    var selectPickerValueDelegate: SelectPickerValueDelegate?
    var key: String?
    
    init(pickerView: UIPickerView) {
        super.init(nibName: nil, bundle: nil)
        self.pickerView = pickerView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView?.dataSource = self
        self.pickerView?.delegate = self
        
        self.view.addSubview(pickerView!)
        
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.topAnchor.constraint( equalTo: pickerView!.topAnchor).isActive = true
        self.view.leftAnchor.constraint(equalTo: pickerView!.leftAnchor).isActive = true
        self.view.rightAnchor.constraint(equalTo: pickerView!.rightAnchor).isActive = true
        self.view.bottomAnchor.constraint(equalTo: pickerView!.bottomAnchor).isActive = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datasource?.count ?? 0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datasource?[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectPickerValueDelegate?.pickerValueSelected(key: key ?? "", value: datasource?[row] ?? "")
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var pickerLabel = view as? UILabel;
        
        if (pickerLabel == nil) {
            pickerLabel = UILabel()
            
            pickerLabel?.font = UIFont(name: "Montserrat", size: 12)
            pickerLabel?.textAlignment = NSTextAlignment.center
        }
        
        pickerLabel?.text = datasource?[row]
        
        return pickerLabel!
    }

}

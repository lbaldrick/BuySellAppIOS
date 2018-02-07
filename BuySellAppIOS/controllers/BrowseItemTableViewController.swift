//
//  BuyItemTableViewController.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 25/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import UIKit

class BrowseItemTableViewController: UITableViewController {
    
    var delegate: OpenBuyItemDetails?
    var datasource: BrowseItems!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(BrowseItemTableViewCell.self, forCellReuseIdentifier: "itemId")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cellIdentifier = "itemId"
        
         guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BrowseItemTableViewCell  else {
            fatalError("The dequeued cell is not an instance of \(cellIdentifier).")
         }
    
        self.tableView.rowHeight = 200
        cell.delegate = delegate
        
        let data = datasource.items[indexPath.row]
        
        let viewModel = BrowseItemTableCellViewModel(itemId: data.id, itemImage: data.images[0], title: data.title, condition: data.condition, buyOption: data.buyOption, itemDescription: data.description, price: data.minimumPrice)
        
        cell.addData(itemId: viewModel.itemId, itemImage: viewModel.itemImage, title: viewModel.title, condition: viewModel.condition, buyOption: viewModel.buyOption , itemDescription: viewModel.itemDescription, price: String(viewModel.price))
        
        return cell
    }
    

}

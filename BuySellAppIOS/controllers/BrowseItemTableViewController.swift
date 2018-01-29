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
 
    override func viewDidLoad() {
        super.viewDidLoad()
         self.tableView.register(BrowseItemTableViewCell.self, forCellReuseIdentifier: "itemId")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cellIdentifier = "itemId"
        
         guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BrowseItemTableViewCell  else {
            fatalError("The dequeued cell is not an instance of \(cellIdentifier).")
         }
    
        self.tableView.rowHeight = 200
        cell.delegate = delegate
        
        return cell
    }    

}

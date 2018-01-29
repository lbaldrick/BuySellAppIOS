//
//  BrowseItemTableViewModel.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 28/01/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


class BrowseItemTableViewModel {
    var selectedItemId: String?
    var pageNumber: Int?
    var pageSize: Int?
    var browseItems: [BrowseItemTableCellViewModel]?
    var isLoading: Bool?
    
    init(selectedItemId: String, pageNumber: Int, pageSize: Int, browseItems: [BrowseItemTableCellViewModel], isLoading: Bool) {
        self.selectedItemId = selectedItemId
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.browseItems = browseItems
        self.isLoading = isLoading
    }
}

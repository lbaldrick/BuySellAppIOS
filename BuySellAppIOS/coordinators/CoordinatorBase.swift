//
//  CoordinatorBase.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 05/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation

class CoordinatorBase {
    var childCoordinators: [CoordinatorBase] = []
    
    func addCoordinator(coordinator:CoordinatorBase) {
        childCoordinators.append(coordinator)
    }
    
    func removeCoordinator(coordinator:CoordinatorBase) {
        var idx:Int?
        for (index,value) in childCoordinators.enumerated() {
            if value === coordinator {
                idx = index
                break
            }
        }
        
        if let index = idx {
            childCoordinators.remove(at: index)
        }
    }
    
    func start() {
        fatalError("start func not implemented")
    }
    
    func finish() {
        fatalError("finish func not implemented")
    }
    
}

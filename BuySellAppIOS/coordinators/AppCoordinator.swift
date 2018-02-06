//
//  AppCoordinator.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 02/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: CoordinatorBase, LoginCoordinatorDelegate {
    private let navigationController:UINavigationController
    private var accountModelController: AccountModelController
    private var isLoggedIn: Bool = false

    
    init(navigationController:UINavigationController, accountModelController: AccountModelController) {
        self.navigationController = navigationController
        self.accountModelController = accountModelController
    }
    
    override func start() {
        if (isLoggedIn) {
            createMainCoordinator()
        } else {
            createLoginCoordinator()
        }
    }
    
    func successfullyLoggedIn(coordinator: CoordinatorBase) {
        isLoggedIn = true
        self.removeCoordinator(coordinator: coordinator)
        createMainCoordinator()
    }
    
    func successfullyCreateAccount(coordinator: CoordinatorBase) {
        self.removeCoordinator(coordinator: coordinator)
        createMainCoordinator()
    }
    
    private func createMainCoordinator() {
        let mainCoordinator = MainCoordinator(navigationController: self.navigationController , accountModelController: self.accountModelController)
        self.addCoordinator(coordinator: MainCoordinator(navigationController: self.navigationController , accountModelController: self.accountModelController))
        mainCoordinator.start()
    }
    
    private func createLoginCoordinator() {
        let loginCoordinator = LoginCoordinator(navigationController: self.navigationController , accountModelController: self.accountModelController, delegate: self)
        self.addCoordinator(coordinator: loginCoordinator)
        loginCoordinator.start()
    }
    
}

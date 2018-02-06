//
//  LoginCoordinatorDelegate.swift
//  BuySellAppIOS
//
//  Created by Michael Lee Baldrick on 05/02/2018.
//  Copyright © 2018 Michael Lee Baldrick. All rights reserved.
//

import Foundation


protocol LoginCoordinatorDelegate {
    func successfullyLoggedIn(coordinator: CoordinatorBase)
    func successfullyCreateAccount(coordinator: CoordinatorBase)
}

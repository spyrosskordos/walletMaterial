//
//  File.swift
//
//
//  Created by Sko on 9/7/22.
//

import AuthService
import CoordinatorTools
import Foundation
import UIKit

public protocol AppCoordinatorFactoryProvider: CoordinatorFactoryProvider {

    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator

    func signInCoordinator(dependencies: Dependencies, authService: AuthServiceProtocol)
        -> Coordinator

    func splashScreenCoordinator(dependencies: Dependencies) -> Coordinator

    func settingsCoordinator(dependencies: Dependencies, tabbar: Tabbar) -> Coordinator
}

public struct Dependencies {

    public let window: UIWindow
    public let coordinatorFactoryProvider: AppCoordinatorFactoryProvider

    public init(window: UIWindow, coordinatorFactoryProvider: AppCoordinatorFactoryProvider) {
        self.window = window
        self.coordinatorFactoryProvider = coordinatorFactoryProvider
    }

}

//
//  File.swift
//
//
//  Created by Sko on 9/7/22.
//

import Foundation
import UIKit
import CoordinatorTools

public protocol AppCoordinatorFactoryProvider:CoordinatorFactoryProvider {
    
    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator
    
    func signInCoordinator(dependencies: Dependencies) -> Coordinator

}

public struct Dependencies {

    public let window: UIWindow
    public let coordinatorFactoryProvider: AppCoordinatorFactoryProvider

    public init(window: UIWindow, coordinatorFactoryProvider: AppCoordinatorFactoryProvider) {
        self.window = window
        self.coordinatorFactoryProvider = coordinatorFactoryProvider
    }

}

//
//  File.swift
//
//
//  Created by Sko on 9/7/22.
//

import Foundation
import UIKit

public protocol CoordinatorFactoryProvider {
    func makeCoordinatorFactory<Factory: CoordinatorFactory>(
        for requirements: Factory.R
    ) -> Factory
    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator
    func memeCreatorCoordinator(tabbar: Tabbar,dependencies: Dependencies) -> Coordinator

}

public struct Dependencies {

    public let window: UIWindow
    public let coordinatorFactoryProvider: CoordinatorFactoryProvider

    public init(window: UIWindow, coordinatorFactoryProvider: CoordinatorFactoryProvider) {
        self.window = window
        self.coordinatorFactoryProvider = coordinatorFactoryProvider
    }

}

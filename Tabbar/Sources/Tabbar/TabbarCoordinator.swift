//
//  File.swift
//
//
//  Created by Sko on 3/7/22.
//

import Common
import Foundation
import UIKit
import CoordinatorTools

public struct TabbarRequirements: Requirements {

    let dependencies: Dependencies

    public init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}

protocol TabbarCoordinator {

}

internal final class TabbarCoordinatorImpl: Coordinator, TabbarCoordinator {

    private let dependencies: Dependencies

    fileprivate init(requirements: TabbarRequirements) {
        self.dependencies = requirements.dependencies
    }

    func start() {
        let viewModel = TabbarViewModel(coordinator: self)
        let viewController = TabbarViewController(viewModel: viewModel)
        dependencies.coordinatorFactoryProvider.memeCreatorCoordinator(
            tabbar: viewController, dependencies: dependencies
        ).start()
        dependencies.window.rootViewController = viewController

    }
}

public struct TabbarCoordinatorFactory: CoordinatorFactory {

    public init() {}

    public func makeCoordinator(for requirements: TabbarRequirements) -> Coordinator {
        return TabbarCoordinatorImpl(requirements: requirements)
    }

}

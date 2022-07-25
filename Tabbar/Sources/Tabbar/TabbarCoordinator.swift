//
//  File.swift
//
//
//  Created by Sko on 3/7/22.
//

import Common
import CoordinatorTools
import Foundation
import UIKit

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
        dependencies.window.rootViewController = viewController
        dependencies.coordinatorFactoryProvider.settingsCoordinator(
            dependencies: dependencies,
            tabbar: viewController
        ).start()

    }
}

public struct TabbarCoordinatorFactory: CoordinatorFactory {

    public init() {}

    public func makeCoordinator(for requirements: TabbarRequirements) -> Coordinator {
        return TabbarCoordinatorImpl(requirements: requirements)
    }

}

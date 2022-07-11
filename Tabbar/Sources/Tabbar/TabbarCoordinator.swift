//
//  File.swift
//
//
//  Created by Sko on 3/7/22.
//

import Common
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

private final class PWFTabbarCoordinatorImpl: Coordinator, TabbarCoordinator {

    private let dependencies: Dependencies

    fileprivate init(requirements: TabbarRequirements) {
        self.dependencies = requirements.dependencies
    }

    func start() {
        let viewModel = TabbarViewModel(coordinator: self)
        let viewController = TabbarViewController(viewModel: viewModel)
//        dependencies.coordinatorFactoryProvider.availabilityListCoordinator(
//            tabbar: viewController, dependencies: dependencies
//        ).start()
        dependencies.window.rootViewController = viewController

    }
}

public struct TabbarCoordinatorFactory: CoordinatorFactory {

    public init() {}

    public func makeCoordinator(for requirements: TabbarRequirements) -> Coordinator {
        return PWFTabbarCoordinatorImpl(requirements: requirements)
    }

}

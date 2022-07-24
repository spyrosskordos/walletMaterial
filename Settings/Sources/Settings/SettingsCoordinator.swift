//
//  SettingsCoordinator.swift
//  
//
//  Created by Sko on 24/7/22.
//

import CoordinatorTools
import Foundation
import UIKit

public struct SettingsRequirements: Requirements {

    let dependencies: Dependencies

    public init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}

protocol SettingsCoordinator {

}

internal final class SettingsCoordinatorImpl: Coordinator,
    SettingsCoordinator
{
    let dependencies: Dependencies

    fileprivate init(requirements: SettingsRequirements) {
        self.dependencies = requirements.dependencies
    }

    func start() {
        let viewModel = SettingsViewModel(coordinator: self)
        let viewController = SettingsViewController(viewModel: viewModel)
        dependencies.window.rootViewController = viewController
    }
}

public struct SettingsCoordinatorFactory: CoordinatorFactory {

    public init() {}

    public func makeCoordinator(for requirements: SettingsRequirements)
        -> Coordinator
    {
        return SettingsCoordinatorImpl(requirements: requirements)
    }
}

class MockSettingsCoordinatorImpl: Coordinator, SettingsCoordinator {
    func start() {

    }

}

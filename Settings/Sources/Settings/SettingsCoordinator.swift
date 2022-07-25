//
//  SettingsCoordinator.swift
//
//
//  Created by Sko on 24/7/22.
//

import Common
import CoordinatorTools
import Foundation
import UIKit

public struct SettingsRequirements: Requirements {

    let dependencies: Dependencies
    let tabbar: Tabbar
    public init(dependencies: Dependencies, tabbar: Tabbar) {
        self.dependencies = dependencies
        self.tabbar = tabbar
    }
}

protocol SettingsCoordinator {

}

internal final class SettingsCoordinatorImpl: Coordinator,
    SettingsCoordinator
{
    let dependencies: Dependencies
    let tabbar: Tabbar
    fileprivate init(requirements: SettingsRequirements) {
        self.dependencies = requirements.dependencies
        self.tabbar = requirements.tabbar
    }

    func start() {
        let viewModel = SettingsViewModel(coordinator: self)
        let viewController = SettingsViewController(viewModel: viewModel)
        let nvc = UINavigationController(rootViewController: viewController)
        nvc.tabBarItem = UITabBarItem(title: "Settings", image: .add, selectedImage: .actions)
        tabbar.append(viewController: nvc)
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

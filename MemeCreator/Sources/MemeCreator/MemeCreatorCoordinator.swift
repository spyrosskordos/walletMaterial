//
//  File.swift
//
//
//  Created by Sko on 11/7/22.
//

import Common
import Foundation
import UIKit
public struct MemeCreatorRequirements: Requirements {
    let dependencies: Dependencies
    let tabbar: Tabbar

    public init(tabbar: Tabbar, dependencies: Dependencies) {
        self.dependencies = dependencies
        self.tabbar = tabbar
    }
}

protocol MemeCreatorCoordinator {

}

internal final class MemeCreatorCoordinatorImpl: Coordinator, MemeCreatorCoordinator {

    let dependencies: Dependencies
    let tabbar: Tabbar

    fileprivate init(requirements: MemeCreatorRequirements) {
        self.dependencies = requirements.dependencies
        self.tabbar = requirements.tabbar
    }

    func start() {
        let viewModel = MemeCreatorViewModel(
            coordinator: self)
        let viewController = MemeCreatorViewController(viewModel: viewModel)
        let nvc = UINavigationController(rootViewController: viewController)
        nvc.tabBarItem = UITabBarItem(title: "Meme Creator", image: .add, selectedImage: .add)

        tabbar.append(viewController: nvc)
    }

}

public struct MemeCreatorCoordinatorFactory: CoordinatorFactory {
    public init() {}
    public func makeCoordinator(for requirements: MemeCreatorRequirements) -> Coordinator {
        return MemeCreatorCoordinatorImpl(requirements: requirements)

    }
}

class MockAvailabilityListCoordinatorImpl: Coordinator, MemeCreatorCoordinator {
    func start() {

    }

}

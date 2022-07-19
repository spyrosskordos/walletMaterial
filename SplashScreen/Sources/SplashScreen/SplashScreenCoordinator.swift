//
//  File.swift
//
//
//  Created by Sko on 19/7/22.
//

import Common
import CoordinatorTools
import Foundation
import UIKit

public struct SplashScreenRequirements: Requirements {
    let dependencies: Dependencies

    public init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

}

protocol SplashScreenCoordinator {

}

internal final class SplashScreenCoordinatorImpl: Coordinator, SplashScreenCoordinator {
    
    let dependencies: Dependencies

    fileprivate init(requirements: SplashScreenRequirements) {
        self.dependencies = requirements.dependencies
    }

    func start() {
        let viewModel = SplashScreenViewModel(coordinator: self)
        let viewController = SplashScreenViewController(viewModel: viewModel)
        dependencies.window.rootViewController = viewController
    }
}

public struct SplashScreenCoordinatorFactory: CoordinatorFactory {
    
    public init() {}
    
    public func makeCoordinator(for requirements: SplashScreenRequirements) -> Coordinator {
        return SplashScreenCoordinatorImpl(requirements: requirements)
    }
}

class MockSplashScreenCoordinatorImpl: Coordinator, SplashScreenCoordinator {
    func start() {

    }

}

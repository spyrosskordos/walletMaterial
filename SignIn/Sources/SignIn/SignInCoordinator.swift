//
//  File.swift
//
//
//  Created by Sko on 17/7/22.
//

import Common
import CoordinatorTools
import Foundation

public struct SignInRequirements: Requirements {
    let dependencies: Dependencies
    public init(
        dependencies: Dependencies
    ) {
        self.dependencies = dependencies
    }
}

protocol SignInCoordinator {

}

internal final class SignInCoordinatorImpl: Coordinator, SignInCoordinator {

    let dependencies: Dependencies
    fileprivate init(requirements: SignInRequirements) {
        self.dependencies = requirements.dependencies
    }

    func start() {
        let viewModel = SignInViewModel(coordinator: self)
        let vc = SignInViewController(viewModel: viewModel)
        dependencies.window.rootViewController = vc
    }
}

public struct SignInCoordinatorFactory: CoordinatorFactory {
    public init() {}
    public func makeCoordinator(for requirements: SignInRequirements) -> Coordinator {
        return SignInCoordinatorImpl(requirements: requirements)

    }
}

class MockSignInCoordinatorImpl: Coordinator, SignInCoordinator {
    func start() {

    }

}

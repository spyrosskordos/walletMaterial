//
//  File.swift
//
//
//  Created by Sko on 17/7/22.
//

import Common
import CoordinatorTools
import Foundation
import AuthService
public struct SignInRequirements: Requirements {
    let dependencies: Dependencies
    let authService: AuthServiceProtocol
    public init(
        dependencies: Dependencies,
        authService: AuthServiceProtocol
    ) {
        self.dependencies = dependencies
        self.authService = authService
    }
}

protocol SignInCoordinator {

}

internal final class SignInCoordinatorImpl: Coordinator, SignInCoordinator {

    let dependencies: Dependencies
    let authService: AuthServiceProtocol
    fileprivate init(requirements: SignInRequirements) {
        self.dependencies = requirements.dependencies
        self.authService = requirements.authService
    }

    func start() {
        let viewModel = SignInViewModel(coordinator: self,authService: authService)
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

//
//  CoordinatorFactoryProvider.swift
//  WalletMaterial
//
//  Created by Sko on 11/7/22.
//

import AuthService
import Combine
import Common
import CoordinatorTools
import Foundation
import Settings
import SignIn
import SplashScreen
import Tabbar

struct WalletMaterialCoordinatorFactoryProvider: AppCoordinatorFactoryProvider {

    func makeCoordinatorFactory<Factory>(for requirements: Factory.R) -> Factory
    where Factory: CoordinatorFactory {
        return Factory()
    }

    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator {
        let requirements = TabbarRequirements(dependencies: dependencies)
        return TabbarCoordinatorFactory().makeCoordinator(for: requirements)
    }

    func signInCoordinator(dependencies: Dependencies, authService: AuthServiceProtocol)
        -> Coordinator
    {
        let requirements = SignInRequirements(dependencies: dependencies, authService: authService)
        return SignInCoordinatorFactory().makeCoordinator(for: requirements)
    }

    func splashScreenCoordinator(dependencies: Dependencies) -> Coordinator {
        let requirements = SplashScreenRequirements(dependencies: dependencies)
        return SplashScreenCoordinatorFactory().makeCoordinator(for: requirements)
    }

    func settingsCoordinator(dependencies: Dependencies, tabbar: Tabbar) -> Coordinator {
        let requirements = SettingsRequirements(dependencies: dependencies, tabbar: tabbar)
        return SettingsCoordinatorFactory().makeCoordinator(for: requirements)
    }
}

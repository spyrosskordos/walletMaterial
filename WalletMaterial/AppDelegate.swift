//
//  AppDelegate.swift
//  WalletMaterial
//
//  Created by Sko on 9/7/22.
//

import AuthService
import Combine
import Common
import Firebase
import FirebaseWrapper
import SwiftUI
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var dependencies: Dependencies!
    var window: UIWindow?
    @Published var authState: AuthState!
    var cancellables = Set<AnyCancellable>()

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()
        let authService = AuthService()
        authState = AuthState(authService: authService)
        let window = UIWindow()
        self.window = window
        self.dependencies = Dependencies(
            window: window, coordinatorFactoryProvider: WalletMaterialCoordinatorFactoryProvider())
        authState.publisher.sink { authState in
            if authState.isLoggedIn {
                self.dependencies.coordinatorFactoryProvider
                    .tabbarCoordinator(dependencies: self.dependencies)
                    .start()
            } else {
                self.dependencies.coordinatorFactoryProvider.signInCoordinator(
                    dependencies: self.dependencies, authService: authService
                ).start()
            }
        }.store(in: &cancellables)

        window.makeKeyAndVisible()
        return true
    }

}

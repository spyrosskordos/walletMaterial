//
//  AppDelegate.swift
//  WalletMaterial
//
//  Created by Sko on 9/7/22.
//

import Common
import Firebase
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var dependencies: Dependencies!
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        FirebaseApp.configure()
        let window = UIWindow()
        self.window = window
        self.dependencies = Dependencies(
            window: window, coordinatorFactoryProvider: WalletMaterialCoordinatorFactoryProvider())
        self.dependencies.coordinatorFactoryProvider
            .tabbarCoordinator(dependencies: dependencies)
            .start()

        window.makeKeyAndVisible()
        return true
    }

}

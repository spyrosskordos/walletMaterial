//
//  CoordinatorFactoryProvider.swift
//  WalletMaterial
//
//  Created by Sko on 11/7/22.
//

import Combine
import Common
import Foundation
import Tabbar
import CoordinatorTools

struct WalletMaterialCoordinatorFactoryProvider: AppCoordinatorFactoryProvider {

    func makeCoordinatorFactory<Factory>(for requirements: Factory.R) -> Factory
    where Factory: CoordinatorFactory {
        return Factory()
    }

    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator {
        let requirements = TabbarRequirements(dependencies: dependencies)
        return TabbarCoordinatorFactory().makeCoordinator(for: requirements)
    }

}

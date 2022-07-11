//
//  CoordinatorFactoryProvider.swift
//  WalletMaterial
//
//  Created by Sko on 11/7/22.
//

import Foundation
import Common
import Tabbar
struct WalletMaterialCoordinatorFactoryProvider: CoordinatorFactoryProvider {
    func makeCoordinatorFactory<Factory>(for requirements: Factory.R) -> Factory where Factory : CoordinatorFactory {
        return Factory()
    }
    
    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator {
        let requirements = TabbarRequirements(dependencies: dependencies)
        return TabbarCoordinatorFactory().makeCoordinator(for: requirements)
    }
    
    
}

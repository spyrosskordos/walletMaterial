//
//  File.swift
//
//
//  Created by Sko on 11/7/22.
//

import Common
import CoordinatorTools
import Foundation
import UIKit

public struct MemeCreatorRequirements: Requirements {
    let dependencies: Dependencies
    let tabbar: Tabbar
    let firestoreRepository: FirestoreRepository

    public init(
        tabbar: Tabbar, firestoreRepository: FirestoreRepository, dependencies: Dependencies
    ) {
        self.dependencies = dependencies
        self.tabbar = tabbar
        self.firestoreRepository = firestoreRepository
    }
}

protocol MemeCreatorCoordinator {

}

internal final class MemeCreatorCoordinatorImpl: Coordinator, MemeCreatorCoordinator {

    let dependencies: Dependencies
    let tabbar: Tabbar
    let firestoreRepository: FirestoreRepository

    fileprivate init(requirements: MemeCreatorRequirements) {
        self.dependencies = requirements.dependencies
        self.tabbar = requirements.tabbar
        self.firestoreRepository = requirements.firestoreRepository
    }

    func start() {
        let viewModel = MemeCreatorViewModel(
            coordinator: self,
            firestorRepository: firestoreRepository
        )
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

class MockMemeCreatorCoordinatorImpl: Coordinator, MemeCreatorCoordinator {
    func start() {

    }

}

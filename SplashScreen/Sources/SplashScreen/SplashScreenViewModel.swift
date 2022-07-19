//
//  File.swift
//
//
//  Created by Sko on 19/7/22.
//

import Foundation

class SplashScreenViewModel: ObservableObject {
    
    private let coordinator: SplashScreenCoordinator
    
    init(coordinator: SplashScreenCoordinator) {
        self.coordinator = coordinator
    }
}

//
//  SettingsViewModel.swift
//  
//
//  Created by Sko on 24/7/22.
//

import Foundation

class SettingsViewModel: ObservableObject {

    private let coordinator: SettingsCoordinator

    init(coordinator: SettingsCoordinator) {
        self.coordinator = coordinator
    }
}

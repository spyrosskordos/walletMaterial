//
//  File.swift
//
//
//  Created by Sko on 17/7/22.
//

import Foundation

class SignInViewModel: ObservableObject {
    private let coordinator: SignInCoordinator

    init(coordinator: SignInCoordinator) {
        self.coordinator = coordinator
    }
}

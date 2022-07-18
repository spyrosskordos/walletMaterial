//
//  File.swift
//
//
//  Created by Sko on 17/7/22.
//

import Foundation
import AuthService
class SignInViewModel: ObservableObject {
    private let coordinator: SignInCoordinator
    private let authService: AuthServiceProtocol
    init(coordinator: SignInCoordinator,authService: AuthServiceProtocol = AuthService()) {
        self.coordinator = coordinator
        self.authService = authService
        authService.signInAnonymously()
    }
}

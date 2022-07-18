//
//  File.swift
//
//
//  Created by Sko on 17/7/22.
//

import AuthService
import Foundation

class SignInViewModel: ObservableObject {

    private let coordinator: SignInCoordinator

    private let authService: AuthServiceProtocol

    init(coordinator: SignInCoordinator, authService: AuthServiceProtocol = AuthService()) {
        self.coordinator = coordinator
        self.authService = authService
       
    }

    func signIn() {
        authService.signInAnonymously()
    }
}

//
//  File.swift
//
//
//  Created by Sko on 18/7/22.
//

import Combine
import FirebaseAuth
import FirebaseWrapper
import Foundation


public final class AuthService: AuthServiceProtocol {
    public init() {}
    
    public  func currentUser() -> AnyPublisher<User?, Never> {
        Just(Auth.auth().currentUser).eraseToAnyPublisher()
    }

    public  func signInAnonymously() -> AnyPublisher<User, SignInError> {
        return Future<User, SignInError> { promise in
            Auth.auth().signInAnonymously { result, error in
                if let error = error {
                    return promise(.failure(SignInError(message: error.localizedDescription)))
                } else if let user = result?.user {
                    return promise(.success(user))
                }
            }

        }.eraseToAnyPublisher()
    }

    public func observeAuthChanges() -> AnyPublisher<User?, Never> {
        Publishers.AuthPublisher().eraseToAnyPublisher()
    }

}

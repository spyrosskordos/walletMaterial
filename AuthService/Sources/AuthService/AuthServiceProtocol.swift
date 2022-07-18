//
//  File.swift
//
//
//  Created by Sko on 18/7/22.
//

import Combine
import FirebaseAuth

///Abstraction for  communication between app and firebase auth
public protocol AuthServiceProtocol {
     func currentUser() -> AnyPublisher<User?, Never>
     func signInAnonymously() -> AnyPublisher<User, SignInError>
     func observeAuthChanges() -> AnyPublisher<User?, Never>
}

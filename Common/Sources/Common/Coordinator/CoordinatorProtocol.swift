//
//  File.swift
//
//
//  Created by Sko on 9/7/22.
//

import Foundation

public protocol Coordinator {
    func start()
}
public protocol Requirements {}

public protocol CoordinatorFactory {
    associatedtype R: Requirements

    init()
    func makeCoordinator(for requirements: R) -> Coordinator
}

extension CoordinatorFactory {
    public init() {
        self.init()
    }
}

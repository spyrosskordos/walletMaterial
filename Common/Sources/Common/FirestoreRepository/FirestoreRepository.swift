//
//  FirestoreRepository.swift
//
//
//  Created by Sko on 12/7/22.
//

import Combine
import Foundation


public protocol FirestoreRepository {
    init()
    
    func add<ItemType: Codable & Identifiable>(item: ItemType) throws
    func get()
}

extension FirestoreRepository {
    public init() {
        self.init()
    }
}

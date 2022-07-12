//
//  File.swift
//
//
//  Created by Sko on 11/7/22.
//

import Common
import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation

class MemeCreatorViewModel: ObservableObject {
    private let coordinator: MemeCreatorCoordinator
    private let firestorRepository: FirestoreRepository
    init(coordinator: MemeCreatorCoordinator, firestorRepository: FirestoreRepository) {
        self.coordinator = coordinator
        self.firestorRepository = firestorRepository
        self.setupObservers()
    }

    private func setupObservers() {
        try? firestorRepository.add(item: MemeTemplate(id: "0", name: "Skordos"))
    }

}

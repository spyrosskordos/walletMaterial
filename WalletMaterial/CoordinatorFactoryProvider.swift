//
//  CoordinatorFactoryProvider.swift
//  WalletMaterial
//
//  Created by Sko on 11/7/22.
//

import Foundation
import Common
import Tabbar
import MemeCreator
import Combine
import FirebaseFirestore
import FirebaseFirestoreSwift

struct WalletMaterialCoordinatorFactoryProvider: CoordinatorFactoryProvider {
    
    
    func makeCoordinatorFactory<Factory>(for requirements: Factory.R) -> Factory where Factory : CoordinatorFactory {
        return Factory()
    }
    
    func tabbarCoordinator(dependencies: Dependencies) -> Coordinator {
        let requirements = TabbarRequirements(dependencies: dependencies)
        return TabbarCoordinatorFactory().makeCoordinator(for: requirements)
    }
    
    func memeCreatorCoordinator(tabbar: Tabbar, dependencies: Dependencies) -> Coordinator {
        let requirements = MemeCreatorRequirements(tabbar: tabbar,firestoreRepository:AppFireStoreRepository(path: "MemeTemplates") , dependencies: dependencies)
        return MemeCreatorCoordinatorFactory().makeCoordinator(for: requirements)
    }
    
}



class AppFireStoreRepository: ObservableObject, FirestoreRepository {
    
    let path: String
    
    private let store: Firestore
    
    init(path: String) {
        self.path = path
        self.store = Firestore.firestore()
    }
    
    func add<T>(item: T) throws where T: Decodable, T: Encodable, T: Identifiable {
        do {

            _ = try store.collection(path).addDocument(from: item)
        } catch {
            fatalError("Unable to add item: \(error.localizedDescription).")
        }
    }

    
    func get() {
        
    }

}

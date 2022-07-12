//
//  File.swift
//
//
//  Created by Sko on 11/7/22.
//

import FirebaseFirestoreSwift
import Foundation

public struct MemeTemplate: Codable, Identifiable {
    @DocumentID public var id: String?
    let name: String
}

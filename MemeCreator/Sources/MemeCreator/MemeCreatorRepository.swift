//
//  File.swift
//
//
//  Created by Sko on 12/7/22.
//

import Combine
import Foundation

protocol MemeCreatorRepository {
    var templatesPublisher: Published<[MemeTemplate]>.Publisher { get }
    func add(meme: ExportedMeme)
    func getTemplates()
}

internal final class MemeCreatorRepositoryImpl: MemeCreatorRepository {
    
    @Published private var templates: [MemeTemplate] = []
    
    var templatesPublisher: Published<[MemeTemplate]>.Publisher {
        return $templates
    }

    func add(meme: ExportedMeme) {

    }

    func getTemplates() {

    }

}

//
//  CatModel.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import Foundation

// MARK: - CatModel
struct CatModel: Codable, Identifiable {
    let text: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case text
        case id = "_id"
    }
}

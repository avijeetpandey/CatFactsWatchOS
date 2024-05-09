//
//  CatModel.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import Foundation

// MARK: - CatModel
struct CatModel: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text
    }
}

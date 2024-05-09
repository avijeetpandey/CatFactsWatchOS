//
//  CatFactsService.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import Foundation

struct CatFactsService {
    
    let stringUrl: String = "https://cat-fact.herokuapp.com/facts"
    
    func fetchFacts() async throws -> [CatModel] {
        guard let url = URL(string: stringUrl) else { return [] }
        let (data,_) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([CatModel].self, from: data)
    }
}

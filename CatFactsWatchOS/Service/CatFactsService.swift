//
//  CatFactsService.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import Foundation

@MainActor
class CatFactsService: ObservableObject {
    @Published var state: LoadingState = .idle
    
    let stringUrl: String = "https://cat-fact.herokuapp.com/facts"
    
    enum LoadingState {
        case idle
        case loading
        case loaded([CatModel])
        case failed(Error)
    }
    
    
    func fetchFacts() async throws {
        self.state = .loading
        guard let url = URL(string: stringUrl) else { return }
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode([CatModel].self, from: data)
            self.state = .loaded(response)
        } catch {
            self.state = .failed(error)
        }
    }
}

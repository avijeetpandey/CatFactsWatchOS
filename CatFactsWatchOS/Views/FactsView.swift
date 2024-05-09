//
//  FactsWrapperView.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - FactsWrapperView
struct FactsView: View {
    @State private var facts = [CatModel]()
    @StateObject private var factsService: CatFactsService = CatFactsService()
    
    
    var body: some View {
        VStack {
            switch factsService.state {
            case .idle, .loading:
                LoadingView()
            case .loaded(let facts):
                FactsListView(facts: facts)
            case .failed(let error):
                Text(error.localizedDescription)
            }
        }
        .padding()
        .task {
            do  {
                try await factsService.fetchFacts()
            } catch {
                print(error.localizedDescription)
            }

        }
        .ignoresSafeArea()
    }
}

#Preview {
    FactsView()
}

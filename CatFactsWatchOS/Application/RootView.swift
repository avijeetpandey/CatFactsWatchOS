//
//  ContentView.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

struct RootView: View {
    @State private var facts = [CatModel]()
    @StateObject var factsService = CatFactsService()
    
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
    }
}

#Preview {
    RootView()
}

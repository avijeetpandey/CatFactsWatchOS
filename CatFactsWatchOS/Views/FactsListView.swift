//
//  FactsListView.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - FactsListView
struct FactsListView: View {
    let facts: [CatModel]
    @Environment(\.modelContext) var context
    
  
    var body: some View {
        List(facts) { fact in
            Section("Fun Fact") {
                Text(fact.text)
                    .font(.title3)
                    .onTapGesture {
                        let savedFact = SavedFact(text: fact.text)
                        context.insert(savedFact)
                    }
            }
        }
    }
}

// MARK: - check if a record already exisits

#Preview {
    FactsListView(facts: [.init(text: "This is a sample fact", id: NSUUID().uuidString)])
}

//
//  SavedFactsView.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI
import SwiftData

// MARK: - SavedFactsView
struct SavedFactsView: View {
    @Query(sort: \SavedFact.text, animation: .bouncy)
    
    private var facts: [SavedFact]
    
    var body: some View {
        VStack {
            Section("Saved") {
                List(facts) { savedFact in
                    Text(savedFact.text)
                }
            }
        }.padding()
            .ignoresSafeArea()
    }
}

#Preview {
    SavedFactsView()
}

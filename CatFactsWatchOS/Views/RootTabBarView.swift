//
//  RootTabBarView.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - RootTabBarView
struct RootTabBarView: View {
    var body: some View {
        TabView {
            FactsView()
                .background(.purple.opacity(0.35).gradient)
            
            SavedFactsView()
                .background(.green.opacity(0.35).gradient)
        }
    }
}

#Preview {
    RootTabBarView()
}

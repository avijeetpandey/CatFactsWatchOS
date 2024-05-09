//
//  CatFactsWatchOSApp.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI
import SwiftData

@main
struct CatFactsWatchOS_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .modelContainer(for: SavedFact.self,
                                isAutosaveEnabled: false)
        }
    }
}

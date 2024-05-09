//
//  SavedFact.swift
//  CatFactsWatchOS Watch App
//
//  Created by Avijeet on 09/05/24.
//

import Foundation
import SwiftData

@Model
class SavedFact {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}


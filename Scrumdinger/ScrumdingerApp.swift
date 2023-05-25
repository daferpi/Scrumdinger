//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by abel.fernandez on 21/5/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}

//
//  vertical_ai_hackathonApp.swift
//  vertical_ai_hackathon
//
//  Created by Andrew Blakeslee Moore on 10/20/24.
//

import SwiftUI
import SwiftData

@main
struct vertical_ai_hackathonApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView(listening: true)
        }
        .modelContainer(sharedModelContainer)
    }
}

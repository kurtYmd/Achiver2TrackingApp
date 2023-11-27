//
//  Achiver2TrackingAppApp.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 27.11.2023.
//

import SwiftUI

@main
struct Achiver2TrackingAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

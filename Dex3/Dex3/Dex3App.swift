//
//  Dex3App.swift
//  Dex3
//
//  Created by user268168 on 11/16/24.
//

import SwiftUI

@main
struct Dex3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
    }
}

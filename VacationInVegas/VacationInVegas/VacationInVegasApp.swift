//
//  VacationInVegasApp.swift
//  VacationInVegas
//
//  Created by user268168 on 11/12/24.
//

import SwiftUI

@main
struct VacationInVegasApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            Symbols()
        }
        .modelContainer(for: Place.self)
    }
}

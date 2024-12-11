//
//  ContentView.swift
//  BBQuotes17
//
//  Created by user268168 on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                FetchView(show: Constants.bbName)
                    .tabItem {
                        Label(Constants.bbName, systemImage: "tortoise")
                    }
                
                FetchView(show: Constants.bcsName)
                    .tabItem {
                        Label(Constants.bcsName, systemImage: "briefcase")
                    }
                
                FetchView(show: Constants.ecName)
                    .tabItem {
                        Label(Constants.ecName, systemImage: "car")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}

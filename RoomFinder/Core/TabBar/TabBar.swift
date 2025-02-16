//
//  TabBar.swift
//  RoomFinder
//
//  Created by Rueben on 09/01/2025.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }
            FavoriteView()
                .tabItem {
                    Text("Favorites")
                    Image(systemName: "heart")
                }
            SettingsView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    TabBar()
}

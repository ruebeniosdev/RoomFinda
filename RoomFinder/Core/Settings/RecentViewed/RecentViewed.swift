//
//  RecentViewed.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct RecentViewed: View {
    var body: some View {
        ScrollView {
            VStack {
                SettingsNavigations(title: "Recently Viewed")
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    RecentViewed()
}

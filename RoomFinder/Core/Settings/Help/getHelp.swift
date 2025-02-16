//
//  getHelp.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct getHelp: View {
    var body: some View {
        ScrollView {
            VStack {
                SettingsNavigations(title: "Help")
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    getHelp()
}

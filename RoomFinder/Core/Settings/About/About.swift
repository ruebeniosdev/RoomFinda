//
//  About.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct About: View {
    var body: some View {
        ScrollView {
            VStack {
                SettingsNavigations(title: "About")
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(.systemGray6))
                            .frame(width: 353, height: 138)
                        
                        Text("About RoomFinda")
                            .fontWeight(.bold)
                    }
                        
                }
                .offset(y: -50)
                VStack(spacing: 23) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("About the Company")
                            .font(.system(size: 14, weight: .bold))
                        Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.secondary)
                    }
                    VStack(alignment: .leading, spacing: 6) {
                        Text("About the Members")
                            .font(.system(size: 14, weight: .bold))
                        Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.secondary)
                        
                        Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups. Lorem ipsum is placeholder text commonly used in the graphic, print.")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .top)
                .frame(width: 350, height: 334)
                .background {
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color(.systemGray6))
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.separator), lineWidth: 0.5)
                )
                .padding()
                .offset(y: -50)
                premiumService()
                    .offset(y: -70)
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    About()
}

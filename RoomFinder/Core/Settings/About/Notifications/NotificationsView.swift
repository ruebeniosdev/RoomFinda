//
//  NotificationsView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            VStack {
                SettingsNavigations(title: "Notifications")
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(.systemGray6))
                            .frame(width: 353, height: 138)
                        
                        Text("All Notifications")
                            .fontWeight(.bold)
                    }
                }
                .offset(y: -50)
                
                
                    ForEach(0..<50) { i in
                        VStack(spacing: 0) {
                            HStack(alignment: .top) {
                                Image(systemName: "bell")
                                VStack(alignment: .leading, spacing: 2) {
                                    HStack {
                                        Text("Premium Payment")
                                            .font(.system(size: 12, weight: .bold))
                                        Spacer()
                                    }
                                    Text("RoomFinda")
                                        .font(.system(size: 12, weight: .regular))
                                        .foregroundStyle(.secondary)
                                }
                            }
                            .padding()
                            .frame(width: 353, height: 70)
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.white)
                                    .shadow(radius: 0.7)
                            }
                            .padding()
                            .offset(y: -60)
                        }
                    }
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    NotificationsView()
}

struct SettingsNavigations: View {
    let title: String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .onTapGesture {
                        dismiss()
                    }
                Spacer()
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.accentColor)
                .shadow(radius: 0.5)
        }
        .ignoresSafeArea()
    }
}

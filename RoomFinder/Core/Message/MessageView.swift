//
//  MessageView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ScrollView {
            VStack {
                MessageViewheader(title: "Notifications")
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    MessageView()
}

struct MessageViewheader: View {
    let title: String
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.white)
            
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

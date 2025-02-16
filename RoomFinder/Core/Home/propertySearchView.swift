//
//  propertySearchView.swift
//  RoomFinder
//
//  Created by Rueben on 09/01/2025.
//

import SwiftUI

struct propertySearchView: View {
    @State var searchTerm = ""
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Find your perfect stay")
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(Color("ab"))
            HStack(spacing: 6) {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 13.5)
                    .foregroundStyle(Color.accentColor)
                TextField("Enter an address, neighbourhood or city", text: $searchTerm)
                    .foregroundStyle(Color("ab"))
                
            }
            .font(.system(size: 12, weight: .regular))
            .padding()
            .frame(width: 294, height: 40)
            .background {
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color(.systemGray6))
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.separator), lineWidth: 0.5) // Matches native border
            )
            Button {
                
            } label: {
                Text("Search Now")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(width: 294, height: 40)
                    .background {
                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color.accentColor)
                    }
            }
        }
        .padding()
        .frame(width: 360, height: 230)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .shadow(radius: 0.5)
        }
    }
}

#Preview {
    propertySearchView()
}

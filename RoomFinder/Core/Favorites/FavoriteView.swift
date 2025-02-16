//
//  FavoriteView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ScrollView {
            VStack {
                MessageViewheader(title: "Favorites")
                favoriteHeaderView()
                .offset(y: -90)
                VStack {
                    Text("All Favorites")
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<30) { i in
                        HStack(alignment: .top) {
                            Image("Downtown")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 85, height: 85)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .clipped()
                            
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Text("1 Big Hall at Lalitpur")
                                    Spacer()
                                    HStack(spacing: 2) {
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 13, height: 15)
                                        Text("3.5")
                                            .font(.system(size: 12, weight: .medium))
                                            .fixedSize(horizontal: true, vertical: true)
                                    }
                                    .foregroundStyle(.white)
                                    .padding()
                                    .frame(width: 40, height: 30)
                                    .background{
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(.green)
                                    }
                                }
                                Text("Mahalaxmi, Lalitpur")
                                    .font(.system(size: 12, weight: .regular))
                                
                                HStack {
                                    HStack {
                                        Text("$250/")
                                            .bold() +
                                        Text("night")
                                            .foregroundStyle(.secondary)
                                    }
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(.red)
                                }
                            }
                        }
                        .padding()
                        .frame(height: 98)
                        .background {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.white)
                                .shadow(radius: 0.7)
                        }
                    }
                }
                .padding(.horizontal)
                .offset(y: -70)
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    FavoriteView()
}

struct favoriteHeaderView: View {
    @State var searchTerm = ""
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Find your favorite rooms")
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(Color("ab"))
            HStack(spacing: 6) {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 13.5)
                    .foregroundStyle(Color.accentColor)
                TextField("Enter name of favorites", text: $searchTerm)
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
                    .stroke(Color(.separator), lineWidth: 0.5)
            )
            Button {
                
            } label: {
                Text("Search Favorites")
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

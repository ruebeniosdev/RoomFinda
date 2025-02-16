//
//  SearchView.swift
//  RoomFinder
//
//  Created by Rueben on 09/01/2025.
//

import SwiftUI

struct SearchView: View {
    let column: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    headerViewSearch()
                    VStack {
                        searchViewPage()
                            .offset(y: -90)
                        
                        VStack {
                            Text("Locations")
                                .font(.system(size: 16, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            LazyVGrid(columns: column) {
                                ForEach(0..<10) { i in
                                    Image("Colorado")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 147, height: 147)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .overlay  {
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(.black.opacity(0.5))
                                        }
                                        .overlay(alignment: .bottomLeading) {
                                            VStack(alignment: .leading) {
                                                Text("Spintex")
                                                    .bold()
                                                Text("8 Found")
                                                    .font(.caption2)
                                            }
                                            .font(.caption)
                                            .foregroundStyle(.white)
                                            .padding()
                                        }
                                }
                            }
                        }
                        .padding(.horizontal, 40)
                        .offset(y: -60)
                    }
                    
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    SearchView()
}

struct searchViewPage: View {
    @State var searchTerm = ""
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Advanced Search")
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(Color("ab"))
            
            HStack(spacing: 6) {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 13.5)
                    .foregroundStyle(Color.accentColor)
                TextField("Enter an address or city", text: $searchTerm)
                
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
            
            HStack(spacing: 6) {
                Image(systemName: "dollarsign")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 13.5)
                    .foregroundStyle(Color.accentColor)
                TextField("Enter price range", text: $searchTerm)
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
            HStack(spacing: 6) {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 13.5)
                    .foregroundStyle(Color.accentColor)
                TextField("Resident Type", text: $searchTerm)
                
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
        .frame(width: 345, height: 300)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .shadow(radius: 1)
        }
    }
}

struct headerViewSearch: View {
    var body: some View {
        VStack {
            Text("Room Finda")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.accentColor)
        }
        .ignoresSafeArea()
    }
}



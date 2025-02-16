//
//  ContentView.swift
//  RoomFinder
//
//  Created by Rueben on 09/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    headerView()
                    VStack(spacing: 0) {
                        propertySearchView()
                            .offset(y: -90)
                        
                        VStack(spacing: 17) {
                            HStack {
                                Text("Recently Added Properties")
                                    .font(.system(size: 14, weight: .bold))
                                Spacer()
                                Text("1040 Results")
                                    .font(.system(size: 8, weight: .medium))
                            }
                            .padding(.horizontal)
                            LazyVStack {
                                ForEach(0..<10) { i in
                                    NavigationLink {
                                        DetailView()
                                    } label: {
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
                                                    Text("$250/")
                                                        .bold() +
                                                    Text("night")
                                                        .foregroundStyle(.secondary)
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
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .padding(.horizontal)
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
    ContentView()
}

struct headerView: View {
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

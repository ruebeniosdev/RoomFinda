//
//  SearchDetailsView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct SearchDetailsView: View {
    var body: some View {
        ScrollView {
            VStack {
                SearchViewheader(title: "Search Details")
                Searchproperty()
                    .offset(y: -50)
                VStack(spacing: 17) {
                    HStack {
                        Text("Showing Results")
                            .font(.system(size: 14, weight: .bold))
                        Spacer()
                        Text("94 Results")
                            .font(.system(size: 10, weight: .regular)).multilineTextAlignment(.center)
                            .foregroundStyle(.secondary)
                    }
                    .frame(width: 350)
                    .padding(.horizontal)
                    
                }
                .offset(y: -20)
                LazyVStack(spacing: 20) {
                    ForEach(0..<5) { showResult in
                        SearchProduct()
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

#Preview {
    SearchDetailsView()
}


struct Searchproperty: View {
    @State var searchTerm = ""
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Search for Properties")
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
                    .fill(Color("bg"))
            }
        }
        .padding()
        .frame(width: 350, height: 114)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .shadow(radius: 0.5)
        }
    }
}


struct SearchProduct: View {
    var body: some View {
        VStack {
            //Rectangle 36
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                .fill(Color(#colorLiteral(red: 0.4543624818325043, green: 0.44690972566604614, blue: 0.8791666626930237, alpha: 1)))

                Image(.downtown)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 290, height: 109)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            .frame(width: 290, height: 109)
            .padding(.bottom)
            .overlay(alignment: .topTrailing) {
                HStack {
                    Text("3.5").font(.system(size: 7, weight: .medium))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.white)
                }
                .background {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.green)
                        .frame(width: 33, height: 16)
                }
                .padding()
            }
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Mahalaxmi, Lalitpur").font(.system(size: 8, weight: .regular))
                    Text("1 Big Hall at Lalitpur").font(.system(size: 12, weight: .bold))
                    Text("1.2 km from Gwarko").font(.system(size: 8, weight: .medium))
                        .foregroundStyle(.secondary)
                }
                Spacer()
                VStack(alignment: .leading, spacing: 6) {
                    Text("$250 /").font(.system(size: 12, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.45, green: 0.45, blue: 0.88, alpha: 1))) + Text("per month").font(.system(size: 10, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.3, green: 0.3, blue: 0.3, alpha: 1)))
                    Text("9 Applied   |   19 Views").font(.system(size: 9, weight: .regular))
                        .foregroundStyle(.secondary)
                    Text("Available").font(.system(size: 8, weight: .medium))
                }
            }
        }
        .padding()
        .frame(width: 313, height: 205)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .shadow(radius: 0.5)
        }
    }
}

struct SearchViewheader: View {
    let title: String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
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
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 168)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.accentColor)
                .shadow(radius: 0.5)
        }
        .ignoresSafeArea()
    }
}

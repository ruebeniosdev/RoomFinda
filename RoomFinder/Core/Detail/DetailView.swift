//
//  DetailView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI

struct DetailView: View {
    let address = "Abeka Junction, Tesano, Accra GH"
    let images = ["Miami", "Beverly", "Colorado", "Downtown"]
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .topLeading) {
                    TabView {
                        ForEach(images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width, height: 375)
                                .clipped()
                        }
                    }
                    .frame(height: 375)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    backButton()
                        .padding(.top, 50)
                }
                .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("1 Big Hall at Lalitpur")
                            .font(.system(size: 20, weight: .bold))
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
                        .frame(width: 50, height: 25)
                        .background{
                            RoundedRectangle(cornerRadius: 4)
                                .fill(.green)
                        }
                    }
                    HStack {
                        Text("$250/")
                            .bold() +
                        Text("night")
                            .foregroundStyle(.secondary)
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 7) {
                            Text("1.2km from Accra Mall")
                                .font(.system(size: 12, weight: .regular))
                                .foregroundStyle(.ab)
                            Text("Mahalaxmi, Lalitpur")
                                .font(.system(size: 12, weight: .regular))
                            HStack {
                                Text("0 Applied")
                                    .font(.system(size: 12, weight: .regular))
                                Rectangle()
                                    .frame(width: 1, height: 8)
                                    .rotationEffect(Angle(degrees: 180))
                                Text("19 Views")
                                    .font(.system(size: 12, weight: .regular))
                            }
                        }
                        .foregroundStyle(.secondary)
                        Spacer(minLength: 50)
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Available")
                                .foregroundStyle(.ab)
                                .font(.system(size: 12, weight: .regular))
                            Text("Property Owned By: Ace")
                                .font(.system(size: 12, weight: .regular))
                            Button {
                                openGoogleMaps(for: address)
                            } label: {
                                Text("View on Google Maps")
                                    .foregroundStyle(.ab)
                                    .font(.system(size: 12, weight: .regular))
                                    .underline()
                            }
                        }
                        .foregroundStyle(.secondary)
                    }
                    .padding(.vertical)
                    Divider()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.system(size: 12, weight: .bold))
                        Text("1 big hall room for rent at lalitpur, ktm with the facilities of bike parking and tap water . it offers 1 bedroom,and a 1 common bathroom for whole flat. It is suitable for student only. Price is negotiable for student only.")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical , 16)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Facilities")
                            .font(.system(size: 12, weight: .bold))
                        HStack {
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Image(systemName: "checkmark")
                                    Text("1 Big Hall")
                                }
                                .font(.system(size: 10, weight: .regular))
                                HStack {
                                    Image(systemName: "checkmark")
                                    Text("Bikes and Car Parking")
                                }
                                .font(.system(size: 10, weight: .regular))
                            }
                            Spacer()
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Image(systemName: "checkmark")
                                    Text("Shared Toilet")
                                }
                                .font(.system(size: 10, weight: .regular))
                                HStack {
                                    Image(systemName: "checkmark")
                                    Text("24/7 Watar Facility")
                                }
                                .font(.system(size: 10, weight: .regular))
                            }
                        }
                    }
                    .padding(.vertical)
                    Button {
                        
                    } label: {
                        Text("Book Now")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundStyle(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background {
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(Color.accentColor)
                            }
                    }
                }
                .padding()
                .background(Color.white)
                .clipShape(CustomCorners(radius: 30, corners: [.topLeft, .topRight]))
               
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .toolbarVisibility(.hidden, for: .tabBar)
    }
    func openGoogleMaps(for address: String) {
            let query = address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            if let url = URL(string: "https://www.google.com/maps/search/?api=1&query=\(query)") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
}

#Preview {
    DetailView()
}

struct backButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.accent)
                    .padding()
                    .frame(width: 40, height: 40)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .shadow(radius: 2)
                    )
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.accent)
                    .padding()
                    .frame(width: 40, height: 40)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .shadow(radius: 2)
                    )
            }

        }
        .padding()
    }
}

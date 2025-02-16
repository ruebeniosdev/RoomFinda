//
//  SettingsView.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI
import PhotosUI

struct SettingsView: View {
    @State var showSignOutAlert = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    MessageViewheader(title: "My Profile")
                    ImageView()
                    
                    /// Navigations
                    VStack(spacing: -20) {
                        NavigationLink {
                            // Add destination view here
                        } label: {
                            profileLinks(title: "Edit Profile", imageName: "person")
                        }
                        NavigationLink {
                            // Add destination view here
                            RecentViewed()
                        } label: {
                            profileLinks(title: "Recent Viewed", imageName: "square.stack")
                        }
                        NavigationLink {
                            // Add destination view here
                            getHelp()
                        } label: {
                            profileLinks(title: "Get Help", imageName: "text.page")
                        }
                        NavigationLink {
                            // Add destination view here
                            About()
                        } label: {
                            profileLinks(title: "About Us", imageName: "questionmark.circle")
                        }
                        NavigationLink {
                            // Add destination view here
                            NotificationsView()
                        } label: {
                            profileLinks(title: "Notifications", imageName: "bell")
                        }
                        Button {
                            showSignOutAlert.toggle()
                        } label: {
                            profileLinks(title: "Sign Out", imageName: "rectangle.portrait.and.arrow.forward")
                        }
                        .alert("Are you sure you want to sign out?", isPresented: $showSignOutAlert) {
                            Button("Sign Out", role: .destructive) {
                                performSignOut()
                            }
                            Button("Cancel", role: .cancel) {}
                        }
                    }
                    .offset(y: -110)
                    
                    premiumService()
                        .offset(y: -140)
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea()
        }
    }
    
    func performSignOut() {
        // Add your sign-out logic here
        print("User signed out")
    }
}

#Preview {
    SettingsView()
}

struct ImageView: View {
    @StateObject var photosModel: PhotoPickerVm = .init()
    var body: some View {
        VStack(spacing: 15) {
            PhotosPicker(selection: $photosModel.selectedPhoto, matching: .images) {
                profileImageView()
            }
            
            Text("Ace Akanko")
                .font(.system(size: 16))
                .fontWeight(.semibold)
            
            HStack(alignment: .top, spacing: 10) {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundStyle(.gray)
                Text("Address: Abeka Junction \nTesano MGR3\nAccra GH")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundStyle(.secondary)
        }
        .padding([.horizontal, .bottom])
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(radius: 0.5)
        }
        .padding()
        .offset(y: -90)
    }
    
    @ViewBuilder
    private func profileImageView() -> some View {
        if let image = photosModel.loadedImages {
            imageView(image: image)
        } else {
            imageView(image: Image("avatar"))
        }
    }
    
    private func imageView(image: Image) -> some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .padding(8)
            .frame(width: 105, height: 105)
            .background(Circle().stroke(Color.accentColor, lineWidth: 5).shadow(radius: 1))
            .offset(y: -30)
            .padding(.bottom, -30)
            .overlay(alignment: .bottomTrailing) {
                Image(systemName: "plus")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.accentColor)
                    .padding(6)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .shadow(radius: 1)
                    )
            }
    }
}

struct profileLinks: View {
    var title: String
    var imageName: String
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: imageName)
                    .foregroundStyle(Color.accent)
                Text(title)
                    .font(.system(size: 15, weight: .bold))
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .foregroundStyle(.black)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(radius: 0.5)
        }
        .padding()
    }
}

struct premiumService: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "questionmark.circle")
                .foregroundStyle(Color.accent)
            VStack(alignment: .leading, spacing: 6) {
                Text("Get ready to get Featured?")
                    .foregroundStyle(.secondary)
                    .font(.caption2)
                Text("Go for Premium Service")
                    .font(.system(size: 15, weight: .bold))
            }
            Spacer()
            Button {
                // Add upgrade logic here
            } label: {
                Text("Upgrade")
                    .font(.system(size: 10, weight: .bold))
                    .foregroundStyle(.white)
                    .fixedSize()
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.accent)
                            .frame(width: 73, height: 28)
                    }
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color("main").opacity(0.1))
                .shadow(radius: 0.5)
        }
        .padding()
    }
}

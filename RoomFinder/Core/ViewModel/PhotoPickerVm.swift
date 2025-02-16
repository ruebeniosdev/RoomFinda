//
//  PhotoPickerVm.swift
//  RoomFinder
//
//  Created by Rueben on 10/01/2025.
//

import SwiftUI
import PhotosUI

class PhotoPickerVm: ObservableObject {
    @Published var selectedPhoto: PhotosPickerItem? {
        didSet {
            Task { @MainActor in
              await loadSelectedPhoto()
            }
        }
    }
    @Published var loadedImages: Image? = nil
    @Published var mediaFiles: [MediaFile] = []
    
    @MainActor
    func loadSelectedPhoto()async {
        guard let selectedPhoto else { return }
        do {
            if let data = try await selectedPhoto.loadTransferable(type: Data.self),
               let uiImage = UIImage(data: data) {
                let image = Image(uiImage: uiImage)
                self.loadedImages = image
                let mediaFile = MediaFile(image: image, data: data)
                self.mediaFiles.append(mediaFile)
            }
        } catch {
            print("Error loading image: \(error.localizedDescription)")

        }
    }
}


struct MediaFile: Identifiable {
    var id: String = UUID().uuidString
    var image: Image
    var data: Data
}

//
//  ProfilePhotoSelectorView.swift
//  twitterclone
//
//  Created by User on 25/02/24.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel

    
    var body: some View {
        VStack {
            AuthenticationHeader(title1: "Setup account",
                                 title2: "add a profile photo")
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                    .modifier(ProfileImagemodifier())
                } else {
                    Image(systemName: "photo.badge.plus.fill")
                        .renderingMode(.template)
                        .modifier(ProfileImagemodifier())
                }
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            
            if let selectedImage = selectedImage {
                Button {
                    viewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
            }
            
            Spacer()
        }
        .ignoresSafeArea()

        }
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImagemodifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding(.top, 44)
            .clipShape(Circle())
    }
}

#Preview {
    ProfilePhotoSelectorView()
}

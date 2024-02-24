//
//  RegistrationView.swift
//  twitterclone
//
//  Created by User on 25/02/24.
//

import SwiftUI
import Firebase

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        VStack {
            
            NavigationLink(destination: ProfilePhotoSelectorView(),
                           isActive: $viewModel.didAuthenticateUser,
            label: {})
            
            
            //MARK: HEADER VIEW
            AuthenticationHeader(title1: "Get Started.", title2: "Create your account.")
            
            VStack(spacing: 40) {
                CostumInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $email)
                CostumInputField(imageName: "person",
                                 placeholderText: "Username",
                                 text: $username) // Change $password to $username
                CostumInputField(imageName: "person.fill.checkmark",
                                 placeholderText: "Fullname",
                                 text: $fullname) // Change $password to $fullname
                CostumInputField(imageName: "lock",
                                 placeholderText: "Password",
                                 isSecureField: true,
                                 text: $password)
            }
            .padding(32)
            
            Button(action: {
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Text("Already have an account")
                        . font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RegistrationView()
}

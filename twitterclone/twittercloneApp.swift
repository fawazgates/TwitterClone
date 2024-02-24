//
//  twittercloneApp.swift
//  twitterclone
//
//  Created by User on 24/02/24.
//

import SwiftUI
import Firebase
import FirebaseStorage

@main
struct twittercloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                RegistrationView()
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}


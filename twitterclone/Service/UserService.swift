//
//  UserService.swift
//  twitterclone
//
//  Created by User on 27/02/24.
//

import Foundation
import FirebaseFirestore

struct UserService {
    
    private let db = Firestore.firestore() // Membuat objek Firestore
    
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void) {
        db.collection("users").document(uid).getDocument { snapshot, error in // Memanggil metode document pada objek Firestore
            if let error = error {
                print("Error fetching user: \(error)")
                return
            }
            
            guard let snapshot = snapshot else {
                print("Snapshot is nil")
                return
            }
            
            guard let user = try? snapshot.data(as: User.self) else {
                print("Failed to parse user data")
                return
            }
            
            completion(user)
        }
    }
}


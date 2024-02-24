//
//  User.swift
//  twitterclone
//
//  Created by User on 27/02/24.
//

import Foundation
import FirebaseFirestore

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}

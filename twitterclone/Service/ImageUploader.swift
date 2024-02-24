//
//  ImageUploader.swift
//  twitterclone
//
//  Created by User on 26/02/24.
//

import Foundation
import UIKit
import FirebaseStorage
import Firebase // tambahkan impor Firebase

struct ImageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return}
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData, metadata: nil) { metadata, error in // perbaiki parameter
            if let error = error {
                print("DEBUG: Failed to upload image with error: \(error.localizedDescription)") // perbaiki localizeDescription
                return
            }
            ref.downloadURL { (url, error) in // tambahkan kurung buka dan tutup, perbaiki parameter
                guard let imageUrl = url?.absoluteString else { return }
                completion(imageUrl)
            }
        }
    }
}

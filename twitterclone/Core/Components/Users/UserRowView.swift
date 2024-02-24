//
//  UserRowView.swift
//  twitterclone
//
//  Created by User on 24/02/24.
//

import Foundation
import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("fawazgates")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("fawaz")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserRowView()
}

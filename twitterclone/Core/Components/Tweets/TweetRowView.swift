//
//  TweetRowView.swift
//  twitterclone
//
//  Created by User on 24/02/24.
//

import Foundation
import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: PROFILE IMAGE + USER INFO + TWEET
            
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
            //MARK: USER INFO & TWEET CAPTION
                
                VStack(alignment: .leading, spacing: 4) {
                    //MARK: User info
                    
                    HStack {
                        Text("Fawaz Gates")
                            .font(.subheadline).bold()
                        
                        Text("@fawazgates")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("1week")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    //MARK: Tweet caption
                    
                    Text("hallo nama saya fawaz")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //MARK: Action button
            
            HStack {
                Button {
                    //action button here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action button here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action button here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action button here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

#Preview {
    TweetRowView()
}

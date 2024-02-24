//
//  FeedView.swift
//  twitterclone
//
//  Created by User on 24/02/24.
//

import Foundation
import SwiftUI

struct FeedView: View {
    @State private var ShowNewTeetView = false

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                ShowNewTeetView.toggle()
            } label: {
                Image(systemName: "pencil.and.scribble")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $ShowNewTeetView){
                NewTweetView()
            
            }
            
        }
    }
}

#Preview {
    FeedView()
}

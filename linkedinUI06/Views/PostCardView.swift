//
//  PostCardView.swift
//  linkedinUI06
//
//  Created by Ankush Shandil on 01/12/22.
//

import SwiftUI

struct SocialView {
    var ids: Int
    var images: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, images: "hand.thumbsup", title: "Like"),
    .init(ids: 1, images: "text.bubble", title: "Comment"),
    .init(ids: 2, images: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, images: "paperplane.fill", title: "Send" )
]
    


let samplePostData = PostData(id: 1, Image: "02", title: "Neha Rathore", followers: 300, ProfileImage: "1")
struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
            .fill(.gray.opacity(0.4))
            .frame(width: .infinity, height: 10)
            .ignoresSafeArea(.all)
            HStack(alignment: .center){
                Image(data.ProfileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .center)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                  }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("Looking for a intern role as a swift UI developer, having exceptional skills in swiftUI.")
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .leading)
          Divider()
            
         }
        
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}

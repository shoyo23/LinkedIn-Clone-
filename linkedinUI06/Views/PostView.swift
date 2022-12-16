//
//  PostView.swift
//  linkedinUI06
//
//  Created by Ankush Shandil on 01/12/22.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, ProfileImage: "00"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, ProfileImage: "01"),
    .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, ProfileImage: "02"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, ProfileImage: "03"),
    .init(id: 4, Image: "4", title: "Intel", followers: 1234, ProfileImage: "04"),
    .init(id: 5, Image: "5", title: "HP", followers: 567, ProfileImage: "05"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, ProfileImage: "00")
    
    ]
struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                ForEach(postData, id: \.id) { data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 45) {
                        ForEach(socialView, id: \.ids){
                            data in
                            VStack{
                                Image(systemName: data.images)
                                Text("\(data.title)")
                            }.foregroundColor(.black.opacity(0.8))
                                .font(.subheadline)
                        }.padding(.horizontal)
                    }
                   
                        
                    
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

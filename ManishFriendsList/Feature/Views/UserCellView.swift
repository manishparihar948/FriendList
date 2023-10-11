//
//  UserCellView.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import SwiftUI

struct UserCellView: View {
    
    let item: User
    
    var body: some View {
        VStack(alignment: .leading, spacing:8){
            HStack {
                
                if let avatarUrl = item.avatar_url{
                    AsyncImage(url: URL(string: avatarUrl)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let returnedImage):
                            returnedImage
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                        case .failure:
                            Image(systemName: "questionmark")
                                .font(.headline)
                        default :
                            Image(systemName: "questionmark")
                                .font(.headline)
                        }
                    }
                }
                 
                
                /*
                Image(systemName: "tv")
                    .foregroundStyle(.black)
                */
                VStack(spacing:8) {
                    Text(makeAttributedString(title: "Type", label: item.type))
                    Text(makeAttributedString(title: "LoginId", label: item.login))
                }
            }
            
        }
        .padding()
        .foregroundStyle(.black)
    }
    
    private func makeAttributedString(title:String, label:String) -> AttributedString {
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .system(size:16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .system(size:16, weight: .regular)
        }
        return string
    }
}

#Preview {
    UserCellView(item: User.dummyData.first!)
}

//
//  ReviewsScreen.swift
//  Reviews
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct ReviewsScreen: View {
    var user: UserResponseModel
    
    var body: some View {
        HStack(spacing: 13.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.title)
                HStack {
                    Text(user.inst)
                        .font(.subheadline)
                    Spacer()
                    Image("like")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct ReviewsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsScreen(user: UserViewModel.userResponse[2])
    }
}

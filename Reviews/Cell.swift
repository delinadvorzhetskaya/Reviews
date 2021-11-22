//
//  Cell.swift
//  Reviews
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct Cell: View {
    var user: UserResponseModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            ReviewsScreen(user: user)
            Text(user.text)
                .lineLimit(nil)
        }
        .padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: UserViewModel.userResponse[1])
    }
}

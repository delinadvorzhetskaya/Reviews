//
//  ContentView.swift
//  Reviews
//
//  Created by Дэлина Дворжецкая on 23.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(UserViewModel.userResponse) { user in
                Cell(user: user)
            }
            .navigationTitle("Отзывы")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

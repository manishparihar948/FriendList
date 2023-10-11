//
//  LoadingView.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    var body: some View {
        VStack(spacing:8) {
            ProgressView()
            Text(text)
        }
    }
}

#Preview {
    LoadingView(text: "Fetching Users")
}

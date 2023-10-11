//
//  UserListScreen.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import SwiftUI

struct UserListScreen: View {
    
    @StateObject private var vm = UserListsViewModelImpl(
        service: UsersServiceImpl())
    
    var body: some View {
        Group {
            if vm.users.isEmpty {
                LoadingView(text: "Fetching Users")
            } else {
                List {
                    ForEach(vm.users, id: \.id) { item in
                        UserCellView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getUserLists()
        }
    }
}

#Preview {
    UserListScreen()
}

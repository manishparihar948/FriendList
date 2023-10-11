//
//  UserListsViewModel.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import Foundation

protocol UserListsViewModel: ObservableObject {
    func getUserLists() async
}

@MainActor
final class UserListsViewModelImpl: UserListsViewModel {
    @Published private(set) var users : [User] = []
    
    // Inject the service dependency
    private let service: UsersService
    
    init(service: UsersService) {
        self.service = service
    }
    
    func getUserLists() async {
        do {
            self.users = try await service.fetchUserLists()
        }catch {
            print(error)
        }
    }
}

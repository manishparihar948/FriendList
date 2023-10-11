//
//  UsersService.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import Foundation

protocol UsersService {
    func fetchUserLists() async throws -> [User]
}

final class UsersServiceImpl: UsersService {
    func fetchUserLists() async throws -> [User] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("/users"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([User].self, from: data)
    }
}

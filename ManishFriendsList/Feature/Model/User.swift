//
//  User.swift
//  ManishFriendsList
//
//  Created by Manish Parihar on 11.10.23.
//

import Foundation

struct User: Decodable {
    let login: String
    let id: Int
    let node_id: String?
    let avatar_url: String?
    let gravatar_id: String?
    let url: String
    let html_url: String?
    let followers_url: String
    let following_url: String
    let gists_url: String?
    let starred_url: String?
    let subscriptions_url: String?
    let organizations_url: String?
    let repos_url: String?
    let events_url: String?
    let received_events_url : String?
    let type: String
    let site_admin: Bool
}

extension User {
    static let dummyData : [User] = [
        User(login: "abc", id: 1, node_id: "ABC", avatar_url: "", gravatar_id: "", url: "", html_url: "", followers_url: "", following_url: "", gists_url: "", starred_url: "", subscriptions_url: "", organizations_url: "", repos_url: "", events_url: "", received_events_url: "", type: "Users", site_admin: true),
        User(login: "xyz", id: 2, node_id: "ABC", avatar_url: "", gravatar_id: "", url: "", html_url: "", followers_url: "", following_url: "", gists_url: "", starred_url: "", subscriptions_url: "", organizations_url: "", repos_url: "", events_url: "", received_events_url: "", type: "Users", site_admin: false)
    ]
    
}

//
//  StoriesData.swift
//  InstagramClone
//
//  Created by Эл on 04.11.2022.
//

import Foundation

/// In InstaPost we keep our data

struct InstaPost {
    /// The count of likes under the posts
    let numberOfLikes: Int
    /// The main login that indicates above the post
    let username: String
    /// The name with which we call the user image asset
    let userImageName: String
    /// /// The name with which we call the post image asset
    let postImageName: String
    /// The login that indicates under the post
    let usernameUnderPost: String
    ///  The users could show their activity when they leave comments
    let comment: String
}

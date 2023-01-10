//
//  FeedTableViewCell.swift
//  InstaClone
//
//  Created by Эл on 22.12.2022.
//

import UIKit

/// There are we configure the properties of our cells with posts
final class FeedTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet private var userImage: UIImageView?
    @IBOutlet private var postImage: UIImageView?
    @IBOutlet private var usernameLabel: UILabel?
    @IBOutlet private var likesLabel: UILabel?
    @IBOutlet private var usernameUnderPost: UILabel?
    @IBOutlet private var comment: UILabel?
    
    // MARK: - static properties
    static let identifier = "FeedTableViewCell"
    
    static var nib: UINib {
        return UINib(nibName: "FeedTableViewCell", bundle: nil)
    }
    
    // MARK: - Methods
    func configure(with model: InstaPost) {
        likesLabel?.text = "Likes: \(model.numberOfLikes)"
        usernameLabel?.text = model.username
        userImage?.image = UIImage(named: model.userImageName)
        postImage?.image = UIImage(named: model.postImageName)
        usernameUnderPost?.text = "\(model.usernameUnderPost)"
        comment?.text = "\(model.comment)"
    }
}

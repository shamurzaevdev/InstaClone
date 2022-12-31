//
//  FeedTableViewCell.swift
//  InstaClone
//
//  Created by Эл on 22.12.2022.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet var userImage: UIImageView?
    @IBOutlet var postImage: UIImageView?
    @IBOutlet var usernameLabel: UILabel?
    @IBOutlet var likesLabel: UILabel?
    @IBOutlet var usernameUnderPost: UILabel?
    @IBOutlet var comment: UILabel?
    
    static let identifier = "FeedTableViewCell"
    
    static var nib: UINib {
        return UINib(nibName: "FeedTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with model: InstaPost) {
        likesLabel?.text = "Likes: \(model.numberOfLikes)"
        usernameLabel?.text = model.username
        userImage?.image = UIImage(named: model.userImageName)
        postImage?.image = UIImage(named: model.postImageName)
        usernameUnderPost?.text = "\(model.usernameUnderPost)"
        comment?.text = "\(model.comment)"
    }
}

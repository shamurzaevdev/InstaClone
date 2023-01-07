//
//  StoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Эл on 04.11.2022.
//

import UIKit

final class StoriesCollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet private var nickNamesLabel: UILabel!
    @IBOutlet private var avatarsImageViews: UIImageView!
    
    static let identifier = "StoriesCollectionViewCell"
    static var nib: UINib {
        return UINib(nibName: "StoriesCollectionViewCell", bundle: nil)
    }

    public func configure(with model: StoriesData) {
        nickNamesLabel.text = model.text
        avatarsImageViews?.image = UIImage(named: model.imageName)
    }

}

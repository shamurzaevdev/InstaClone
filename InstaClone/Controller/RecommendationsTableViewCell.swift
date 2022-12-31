//
//  RecommendationsTableViewCell.swift
//  InstaClone
//
//  Created by Эл on 24.12.2022.
//

import UIKit

class RecommendationsTableViewCell: UITableViewCell, UIScrollViewDelegate {
    
    static let identifier = "RecommendationsTableViewCell"
    
    static var nib: UINib {
        return UINib(nibName: "RecommendationsTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

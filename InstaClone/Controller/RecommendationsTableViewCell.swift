//
//  RecommendationsTableViewCell.swift
//  InstaClone
//
//  Created by Эл on 24.12.2022.
//

import UIKit

/// There are we configure the properties of our cells with recommendations
final class RecommendationsTableViewCell: UITableViewCell, UIScrollViewDelegate {
    
    // MARK: - Static properties
    static let identifier = "RecommendationsTableViewCell"
    
    static var nib: UINib {
        return UINib(nibName: "RecommendationsTableViewCell", bundle: nil)
    }
}

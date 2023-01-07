//
//  FeedViewController.swift
//  InstaClone
//
//  Created by Эл on 22.12.2022.
//

import UIKit

/// There are we can ckeck the news of our followers. Check the stories and the recommendations

final class FeedViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private var table: UITableView!
    
    // MARK: - Private Properties
    private var models = [InstaPost]()
    private let refreshControl: UIRefreshControl = {
       let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refreshPage(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureMenu()
    }
    
    // MARK: - Private methods
    private func configureMenu() {
        table.register(FeedTableViewCell.nib, forCellReuseIdentifier: FeedTableViewCell.identifier)
        table.register(RecommendationsTableViewCell.nib, forCellReuseIdentifier: RecommendationsTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        table.refreshControl = refreshControl
        table.refreshControl?.tintColor = .white
        
        models.append(InstaPost(numberOfLikes: 2400,
                                username: "khass",
                                userImageName: "khass",
                                postImageName: "gtr",
                                usernameUnderPost: "khass",
                                comment: "Hello everyone"))
        
        models.append(InstaPost(numberOfLikes: 253,
                                username: "gevorg",
                                userImageName: "gevorg",
                                postImageName: "f30",
                                usernameUnderPost: "gevorg",
                                comment: "whats going on guys?"))
    }
        
    // MARK: - Objc Methods
    @objc private func refreshPage(sender: UIRefreshControl) {
        sender.endRefreshing()
    }
        
}

    // MARK: Extensions
    // MARK: - UITableViewDataSource
extension FeedViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as? FeedTableViewCell else {
                fatalError("The cell FeedTableViewCell was not created")
            }
            cell.configure(with: models[indexPath.row])
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RecommendationsTableViewCell.identifier, for: indexPath) as? RecommendationsTableViewCell else {
                fatalError("The cell RecommendationsTableViewCell was not created")
            }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as? FeedTableViewCell else {
                fatalError("The cell FeedTableViewCell was not created")
            }
            cell.configure(with: models[1])
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as? FeedTableViewCell else {
                            fatalError("The cell FeedTableViewCell was not created")
            }
            return cell
        }
    }
}

    //MARK: - UITableViewDelegate
extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 515.0
        case 1:
            return 344.0
        case 2:
            return 515.0
        default:
            return 515.0
        }
    }
}

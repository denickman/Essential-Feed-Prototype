//
//  FeedViewController.swift
//  Prototype
//
//  Created by Denis Yaremenko on 21.10.2024.
//

import UIKit

class FeedViewController: UITableViewController {
    
    
    private let feeds = FeedImageViewModel.prototypeFeed
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedImageCell.self), for: indexPath) as! FeedImageCell
        let feed = feeds[indexPath.row]
        cell.configure(with: feed)
        return cell
    }

}

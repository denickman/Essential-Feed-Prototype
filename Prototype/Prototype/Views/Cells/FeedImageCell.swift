//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Denis Yaremenko on 21.10.2024.
//

import UIKit

class FeedImageCell: UITableViewCell {
    
    @IBOutlet private(set) var locationContainer: UIView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        feedImageView.alpha = .zero
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        feedImageView.alpha = .zero
    }

    func configure(with feed: FeedImageViewModel) {
        locationLabel.text = feed.location
        locationContainer.isHidden = feed.location == nil
        descriptionLabel.text = feed.description
        descriptionLabel.isHidden = feed.description == nil
        feedImageView.image = UIImage(named: feed.imageName)
        fadeIn(UIImage(named: feed.imageName))
    }
    
    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image
        
        UIView.animate(
            withDuration: 0.3,
            delay: 0.3,
            options: [],
            animations: {
                self.feedImageView.alpha = 1
            }
        )
    }
    
    
    
    
    
    
    
 }


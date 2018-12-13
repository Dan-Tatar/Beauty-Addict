//
//  ReviewCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 25/09/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ReviewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var bubbleView: UIView = {
        var bubble = UIView()
        bubble.translatesAutoresizingMaskIntoConstraints = false
        bubble.backgroundColor = UIColor.white
        bubble.layer.cornerRadius = 20
        return bubble
    }()
    
    var review: UILabel = {
        let rev = UILabel()
        rev.font = UIFont.systemFont(ofSize: 17)
        rev.backgroundColor = UIColor.white
        rev.translatesAutoresizingMaskIntoConstraints = false
        return rev
    }()
    
    var usernameLabel: UILabel = {
        let rev = UILabel()
        rev.font = UIFont.boldSystemFont(ofSize: 18)
        rev.backgroundColor = UIColor.white
        rev.translatesAutoresizingMaskIntoConstraints = false
        return rev
    }()
    
    lazy var cosmosViewLabel: CosmosView = {
        var view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.settings.fillMode = .full
        view.settings.starSize = 26
        return view
    }()
    
    func setReviews(item: Reviews) {
        usernameLabel.text = item.userName
        review.text = item.review
        cosmosViewLabel.rating = item.rating
    }
    
    func setupViews() {
        
        addSubview(bubbleView)
        bubbleView.addSubview(review)
        bubbleView.addSubview(usernameLabel)
        bubbleView.addSubview(cosmosViewLabel)
        review.numberOfLines = 0
        //constraints bubbleView
        bubbleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        bubbleView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        bubbleView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        bubbleView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        //constraints review
        review.topAnchor.constraint(equalTo: cosmosViewLabel.topAnchor, constant: 30).isActive = true
        review.leftAnchor.constraint(equalTo: bubbleView.leftAnchor, constant: 16).isActive = true
        review.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -16).isActive = true
        review.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -16).isActive = true
        //constraints usernameLabel
        usernameLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 18).isActive = true
        usernameLabel.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -16).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: cosmosViewLabel.rightAnchor, constant: 30).isActive = true
        //        usernameLabel.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -16).isActive = true
        //constraints cosmosViewLabel
        cosmosViewLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 16).isActive = true
        cosmosViewLabel.leftAnchor.constraint(equalTo: bubbleView.leftAnchor, constant: 16).isActive = true
        //        cosmosViewLabel.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -16).isActive = true
        //                usernameLabel.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -16).isActive = true
    }
}


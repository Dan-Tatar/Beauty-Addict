//
//  ReviewCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 25/09/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

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
    
    
    func setupViews() {
        
        addSubview(bubbleView)
        bubbleView.addSubview(review)
        review.numberOfLines = 0
        
        bubbleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        bubbleView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        bubbleView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        bubbleView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        
        review.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 16).isActive = true
        review.leftAnchor.constraint(equalTo: bubbleView.leftAnchor, constant: 16).isActive = true
        review.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -16).isActive = true
        review.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -16).isActive = true
        
        
    }
}


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
    
    var review: UITextView = {
        let np = UITextView()
        np.font = UIFont.boldSystemFont(ofSize: 17)
        np.translatesAutoresizingMaskIntoConstraints = false
        return np
    }()
    
    
    func setupViews() {
        
        addSubview(review)
        review.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        review.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        review.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        review.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}


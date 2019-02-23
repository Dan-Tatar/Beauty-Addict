//
//  HomeView.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 23/02/2019.
//  Copyright © 2019 Dany. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupViews()
    }
    
    var beautyImage: UIImageView = {
        let ip = UIImageView()
        ip.translatesAutoresizingMaskIntoConstraints = false
        ip.image = UIImage(named: "beauty")
        ip.layer.borderColor = UIColor.black.cgColor
        ip.layer.masksToBounds = true
        ip.layer.borderWidth = 0.2
        ip.layer.cornerRadius = 10
        return ip
    }()
    
    var beautyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choose your perfect products"
        label.font = UIFont (name: "GillSans-SemiBoldItalic", size: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    func setupViews() {
        addSubview(beautyImage)
        addSubview(beautyLabel)
        // constraints beautyImage
        beautyImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 70).isActive = true
        beautyImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        beautyImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        beautyImage.bottomAnchor.constraint(equalTo: beautyLabel.topAnchor, constant: 2).isActive = true
        // constraints beautyLabel
        beautyLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
        beautyLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        beautyLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 2).isActive = true
        beautyLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
    }
}

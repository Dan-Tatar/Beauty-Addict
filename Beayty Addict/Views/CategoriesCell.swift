//
//  CategoriesCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 29/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit

class CategoriesCell: UITableViewCell {
    
    let beautyCategoriesImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let nameLabel: UILabel = {
        var nl = UILabel()
        nl.backgroundColor = UIColor(displayP3Red: 41/255, green: 43/255, blue: 54/255, alpha: 0.4)
        nl.textColor = UIColor.white
        nl.textAlignment = .center
        nl.layer.cornerRadius = 15
        nl.layer.masksToBounds = true
        nl.font = UIFont.boldSystemFont(ofSize: 24)
        nl.layer.borderColor = UIColor.white.cgColor
        nl.layer.borderWidth = 0.5
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCategories(categories: MainCathegories) {
        beautyCategoriesImageView.image = categories.image
        nameLabel.text = categories.category
    }
   
    func setupViews() {
        addSubview(beautyCategoriesImageView)
        addSubview(nameLabel)
        
        beautyCategoriesImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        beautyCategoriesImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        beautyCategoriesImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        beautyCategoriesImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 70).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -70).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
    
}

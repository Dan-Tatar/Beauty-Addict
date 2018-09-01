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
    
//    @IBOutlet weak var beautyCategoriesImageView: UIImageView!
    
    let beautyCategoriesImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
//        iv.layer.cornerRadius = 10
        iv.contentMode = .scaleAspectFill
        return iv
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
    }
    func setupViews() {
          addSubview(beautyCategoriesImageView)
        
        beautyCategoriesImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        beautyCategoriesImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
         beautyCategoriesImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
         beautyCategoriesImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12).isActive = true
        

    }
    
    
}

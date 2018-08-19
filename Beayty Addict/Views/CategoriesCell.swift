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
//        iv.image = UIImage(named: "mascara")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
//    let separatorLiveView: UIView = {
//        let lineView = UIView()
//        lineView.backgroundColor = UIColor(red: 230.0/255, green: 230.0/255, blue: 230.0/255, alpha: 1.0)
//        lineView.translatesAutoresizingMaskIntoConstraints = false
//        lineView.clipsToBounds = true
//        lineView.isHidden = false
//        return lineView
//    }()

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()

        backgroundColor = .white
    }
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//      
//        backgroundColor = .white
//        
//    }

    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setCategories(categories: MainCathegories) {
        beautyCategoriesImageView.image = categories.image
    }
    func setupViews() {
          addSubview(beautyCategoriesImageView)
//        addSubview(separatorLiveView)
        beautyCategoriesImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        beautyCategoriesImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
         beautyCategoriesImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12).isActive = true
         beautyCategoriesImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12).isActive = true
        
//        //lineSeparator
//        separatorLiveView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
//        separatorLiveView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
//        separatorLiveView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
//
//        separatorLiveView.heightAnchor.constraint(equalToConstant: 1).isActive = true
//
    }
    
    
}

//
//  ProductCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 06/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit

class ProductCell: UITableViewCell {
    
//    @IBOutlet weak var imageProduct: UIImageView!
//
//    @IBOutlet weak var nameProduct: UILabel!
//
//    @IBOutlet weak var ratingProduct: UILabel!
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var imageProduct: UIImageView = {
        let ip = UIImageView()
        ip.translatesAutoresizingMaskIntoConstraints = false
     //   ip.contentMode = .scaleAspectFit
        ip.layer.borderColor = UIColor.black.cgColor
        ip.layer.masksToBounds = true
        ip.layer.borderWidth = 0.2
        ip.layer.cornerRadius = 10
        return ip
    }()
    var nameProduct: UITextView = {
        let np = UITextView()
        np.font = UIFont.boldSystemFont(ofSize: 16)
        np.translatesAutoresizingMaskIntoConstraints = false
        return np
    }()
    var ratingProduct: UILabel = {
        let rp = UILabel()
        rp.font = UIFont.systemFont(ofSize: 14)
        rp.translatesAutoresizingMaskIntoConstraints = false
        return rp
    }()

    func setupViews() {
    
        addSubview(imageProduct)
        addSubview(nameProduct)
        addSubview(ratingProduct)
        
        imageProduct.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        imageProduct.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        imageProduct.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageProduct.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        
        nameProduct.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        nameProduct.leftAnchor.constraint(equalTo: imageProduct.rightAnchor, constant: 10).isActive = true
        nameProduct.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        nameProduct.bottomAnchor.constraint(equalTo: ratingProduct.topAnchor, constant: 0).isActive = true
    
    //    ratingProduct.topAnchor.constraint(equalTo: nameProduct.bottomAnchor, constant: -5).isActive = true
        ratingProduct.leftAnchor.constraint(equalTo: imageProduct.rightAnchor, constant: 15).isActive = true
        ratingProduct.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        ratingProduct.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
    
    }
    
    func setProducts(list: Product) {
        imageProduct.image = list.imageProduct
        nameProduct.text = list.name
        ratingProduct.text = "Rating  " + String(list.rating)
        
        
    }
}

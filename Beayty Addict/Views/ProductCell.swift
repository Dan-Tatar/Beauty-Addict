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
        let im = UIImageView()
        im.translatesAutoresizingMaskIntoConstraints = false
        return im
    }()
    var nameProduct: UILabel = {
        let np = UILabel()
        np.translatesAutoresizingMaskIntoConstraints = false
        return np
    }()
    var ratingProduct: UILabel = {
        let rp = UILabel()
        rp.translatesAutoresizingMaskIntoConstraints = false
        return rp
    }()

    func setupViews() {
    
        addSubview(imageProduct)
        addSubview(nameProduct)
        addSubview(ratingProduct)
        
        imageProduct.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        imageProduct.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        imageProduct.widthAnchor.constraint(equalToConstant: 160).isActive = true
        imageProduct.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5).isActive = true
        
        nameProduct.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        nameProduct.leftAnchor.constraint(equalTo: imageProduct.rightAnchor, constant: -5).isActive = true
        nameProduct.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameProduct.bottomAnchor.constraint(equalTo: ratingProduct.bottomAnchor, constant: 5).isActive = true
    
        ratingProduct.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        ratingProduct.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        ratingProduct.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        ratingProduct.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
    
    }
    
    func setProducts(list: Product) {
        imageProduct.image = list.imageProduct
        nameProduct.text = list.name
        ratingProduct.text = String(list.rating)
        
        
    }
}

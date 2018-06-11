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
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    @IBOutlet weak var nameProduct: UILabel!
    
    @IBOutlet weak var ratingProduct: UILabel!
    
    func setProducts(list: Product) {
        imageProduct.image = list.imageProduct
        nameProduct.text = list.name
        ratingProduct.text = String(list.rating)
        
        
    }
}

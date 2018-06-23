//
//  DetailProductCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 15/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class DetailProductCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productRating: UILabel!
    @IBAction func buyProduct(_ sender: UIButton) {
    }
    
    func setProduct(productDetail: Product) {
        productName.text = productDetail.name
        productImage.image = productDetail.imageProduct
        productDescription.text = productDetail.description
        productRating.text = String(productDetail.rating)
    }
}

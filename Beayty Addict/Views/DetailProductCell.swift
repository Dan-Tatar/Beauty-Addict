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

     
//    func setProduct(productDetail: Product?) {
//        productName.text = productDetail?.name
//        productImage.image = productDetail?.imageProduct
//        productDescription.text = productDetail?.description
//        productRating.text = String(describing: productDetail?.rating)
//    }
//    var productImage1: UIImageView = {
//        var imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//
//    var productName1: UILabel = {
//        var name = UILabel()
//        name.translatesAutoresizingMaskIntoConstraints = false
//        return name
//    }()
//
//    var productDescription1: UILabel = {
//        var description = UILabel()
//        description.translatesAutoresizingMaskIntoConstraints = false
//        return description
//    }()
//
//    var productRating1: UILabel = {
//        var rating = UILabel()
//        rating.translatesAutoresizingMaskIntoConstraints = false
//        return rating
//    }()
//    var buyProduct1 : UIButton = {
//        var button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//    override func layoutSubviews() {
//        productImage1.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        productImage1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        productImage1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        productImage1.heightAnchor.constraint(equalTo: productImage1.widthAnchor, multiplier: 1).isActive = true
//    }
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.addSubview(productImage1)
//        self.addSubview(productName1)
//        self.addSubview(productDescription1)
//        self.addSubview(productRating1)
//        self.addSubview(buyProduct1)
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}


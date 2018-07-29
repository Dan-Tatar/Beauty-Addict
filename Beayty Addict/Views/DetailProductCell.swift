//
//  DetailProductCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 15/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class DetailProductCell:  UITableViewCell {

//    @IBOutlet weak var productImage: UIImageView!
//    @IBOutlet weak var productName: UILabel!
//    @IBOutlet weak var productDescription: UILabel!
//    @IBOutlet weak var productRating: UILabel!
//    @IBAction func buyProduct(_ sender: UIButton) {
//    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(productImage1)
//        addSubview(productName1)
//        addSubview(cellView)
      addSubview(productDescription1)
//        addSubview(productRating1)
        //        self.addSubview(buyProduct1)
        layoutSubviews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func setProduct(productDetail: Product?) {
//        productName1.text = productDetail?.name
//        productImage1.image = productDetail?.imageProduct
        productDescription1.text = productDetail?.description
//        productRating1.text = String(describing: productDetail?.rating)
    }
//    let cellView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    var productImage1: UIImageView = {
//        var imageView = UIImageView()
//        imageView.contentMode = .scaleToFill
//        imageView.clipsToBounds = true
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
    
//    var productName1: UILabel = {
//        var name = UILabel()
//        name.translatesAutoresizingMaskIntoConstraints = false
//        return name
//    }()

    var productDescription1: UITextView = {
        var description = UITextView()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
////
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
    override func layoutSubviews() {
//        cellView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        cellView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//         cellView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        productName1.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
//        productName1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8) .isActive = true
//        productName1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8) .isActive = true
//        productName1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
//        productImage1.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        productImage1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        productImage1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//           productImage1.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        productImage1.heightAnchor.constraint(equalTo: productImage1.widthAnchor, multiplier: 1).isActive = true
//
//        productRating1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
//        productRating1.topAnchor.constraint(equalTo: productName1.bottomAnchor, constant: 8).isActive = true
//        productRating1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
//        productRating1.heightAnchor.constraint(equalToConstant: 30).isActive = true

        productDescription1.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        productDescription1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        productDescription1.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        productDescription1.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }


}


//
//  DetailViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var product : Product?
   
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productRating: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
           view.addSubview(productImage1)
        layoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setProduct(productDetail: product)
    }

    func setProduct(productDetail: Product?) {
        productName.text = productDetail?.name
        productImage.image = productDetail?.imageProduct
        productDescription.text = productDetail?.description
        productRating.text = String(describing: productDetail?.rating)
    }
    var productImage1: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var productName1: UILabel = {
        var name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    var productDescription1: UILabel = {
        var description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    var productRating1: UILabel = {
        var rating = UILabel()
        rating.translatesAutoresizingMaskIntoConstraints = false
        return rating
    }()
    var buyProduct1 : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
     func layoutSubviews() {
        productImage1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        productImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
        productImage1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 8).isActive = true
      //    productImage1.rightAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>#>, constant: <#T##CGFloat#>)
    //    productImage1.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
    }
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        view.addSubview(productImage1)
////        self.addSubview(productName1)
////        self.addSubview(productDescription1)
////        self.addSubview(productRating1)
////        self.addSubview(buyProduct1)
//
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    //
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var detail = product
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell") as? DetailProductCell
//        cell?.setProduct(productDetail: product)
//        return cell!
//    }
}


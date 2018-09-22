//
//  DetailViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var product : Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
       
        layoutSubviews()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setProduct(productDetail: product)
    }

    func setProduct(productDetail: Product?) {
        productName1.text = productDetail?.name
        productImage1.image = productDetail?.imageProduct
        productDescription1.text = productDetail?.description
        if let rating = productDetail?.rating {
        productRating1.text = "Rating " + String(rating)
        }
    }
    
    var productImage1: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 0.5
        return imageView
    }()
    
    var productName1: UILabel = {
        var name = UILabel()
        name.font = UIFont.boldSystemFont(ofSize: 21)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    var productDescription1: UITextView = {
        var description = UITextView()
        description.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    var productRating1: UILabel = {
        var rating = UILabel()
        rating.translatesAutoresizingMaskIntoConstraints = false
        return rating
    }()
    var addReview : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.backgroundColor = UIColor.black
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle( "Add Review", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.titleLabel?.textColor = UIColor.white
        button.addTarget(self, action:  #selector(review), for: .touchUpInside)
        return button
    }()
    @objc func review() {
        let reviewViewController = ReviewViewController()
        navigationController?.pushViewController(reviewViewController, animated: true)
    }
    //    var buyProduct1 : UIButton = {
    //        var button = UIButton()
    //        button.translatesAutoresizingMaskIntoConstraints = false
    //        button.layer.cornerRadius = 10
    //        button.backgroundColor = UIColor.black
    //        button.setTitle( "Buy", for: .normal)
    //        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
    //        button.titleLabel?.textColor = UIColor.black
    //        button.addTarget(self, action:  #selector(accessButton), for: .touchUpInside)
    //        return button
    //    }()
//    @objc func accessButton() {
//        if let url = URL(string: ((product?.url)!)) {
//            UIApplication.shared.open(url)
//        }
//    }
    func layoutSubviews() {
        
        view.addSubview(productImage1)
        view.addSubview(productName1)
        view.addSubview(productDescription1)
        view.addSubview(productRating1)
         view.addSubview(addReview)
//        view.addSubview(buyProduct1)
        
        // ProductImage constraints
        productImage1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        productImage1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 8).isActive = true
        productImage1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        productImage1.heightAnchor.constraint(equalToConstant: 300).isActive = true
         // ProductName constraints
        productName1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productName1.topAnchor.constraint(equalTo: productImage1.bottomAnchor , constant: 8).isActive = true
        productName1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        productName1.heightAnchor.constraint(equalToConstant: 40).isActive = true
          // ProductDesription constraints
        productDescription1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productDescription1.topAnchor.constraint(equalTo: productName1.bottomAnchor , constant: 8).isActive = true
        productDescription1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
//          productDescription1.bottomAnchor.constraint(equalTo: productRating1.topAnchor, constant: 15).isActive = true
        productDescription1.heightAnchor.constraint(equalToConstant: 150).isActive = true
    
        //productRating constraints
        productRating1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productRating1.topAnchor.constraint(equalTo: productDescription1.bottomAnchor, constant: 8).isActive = true
//        productRating1.rightAnchor.constraint(equalTo: addReview.leftAnchor, constant: 15).isActive = true
        productRating1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // addReview constraints
//                addReview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
                addReview.topAnchor.constraint(equalTo: productDescription1.bottomAnchor , constant: 8).isActive = true
                addReview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
                addReview.heightAnchor.constraint(equalToConstant: 30).isActive = true
         addReview.widthAnchor.constraint(equalToConstant: 110).isActive = true
        // buyProduct constraints
//        buyProduct1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
//        buyProduct1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor , constant: -20).isActive = true
//        buyProduct1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
//        buyProduct1.heightAnchor.constraint(equalToConstant: 40).isActive = true
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


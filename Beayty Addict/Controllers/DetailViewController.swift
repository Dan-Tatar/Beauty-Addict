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
    let reviewCell = "ReviewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupViews()
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
    
    var seeReviews : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 14
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor.gray
        button.setTitle( "See Reviews", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        
        button.addTarget(self, action:  #selector(review), for: .touchUpInside)
        return button
    }()
    
    @objc func review() {
        let reviewViewController = ReviewsViewController()
        reviewViewController.productReviews = product
        navigationController?.pushViewController(reviewViewController, animated: true)
    }

    func setupViews() {
        
        view.addSubview(productImage1)
        view.addSubview(productName1)
        view.addSubview(productDescription1)
        view.addSubview(productRating1)
        view.addSubview(seeReviews)
        
        // productImage constraints
        productImage1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        productImage1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 0).isActive = true
        productImage1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        productImage1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        // ProductName constraints
        productName1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productName1.topAnchor.constraint(equalTo: productImage1.bottomAnchor , constant: 8).isActive = true
        productName1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        productName1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // productDesription constraints
        productDescription1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productDescription1.topAnchor.constraint(equalTo: productName1.bottomAnchor , constant: 8).isActive = true
        productDescription1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true

        productDescription1.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        //productRating constraints
        productRating1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        productRating1.topAnchor.constraint(equalTo: productDescription1.bottomAnchor, constant: 8).isActive = true
        productRating1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // seeReview constraints
        seeReviews.topAnchor.constraint(equalTo: productDescription1.bottomAnchor , constant: 8).isActive = true
        seeReviews.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        seeReviews.heightAnchor.constraint(equalToConstant: 35).isActive = true
        seeReviews.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
    }
}


































    
//     init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        view.addSubview(productImage1)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

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


// buyProduct constraints
//        buyProduct1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
//        buyProduct1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor , constant: -20).isActive = true
//        buyProduct1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
//        buyProduct1.heightAnchor.constraint(equalToConstant: 40).isActive = true


//        let reviewViewController = ReviewsViewController(collectionViewLayout: UICollectionViewFlowLayout())
//

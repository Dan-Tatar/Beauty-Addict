//
//  CollectionViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 25/09/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation

//class ReviewsViewController: UICollectionViewController {
//    
//    var cellID = "Cell ID"
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
//        cell.backgroundColor = UIColor.blue
//        return cell
//    }
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor.white
//        layoutSubviews()
//        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
//        //        collectionView.dataSource = self
//        //        collectionView.delegate = self
//        //        var layout = UICollectionViewFlowLayout()
//        //        layout.scrollDirection = .horizontal
//        //          let cV = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        //
//    }
//    
//    var addReview : UIButton = {
//        var button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.layer.cornerRadius = 25
//        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
//        button.setImage(#imageLiteral(resourceName: "plus"), for: .normal)
//        button.addTarget(self, action:  #selector(review), for: .touchUpInside)
//        return button
//    }()
//    
//    //    var collectionView: UICollectionView = {
//    //        var layout = UICollectionViewFlowLayout()
//    //        layout.scrollDirection = .horizontal
//    //        let cV = UICollectionView(frame: .zero, collectionViewLayout: layout)
//    //        cV.translatesAutoresizingMaskIntoConstraints = false
//    //
//    //
//    //        return cV
//    //    }()
//    @objc func review() {
//        let reviewViewController = ReviewViewController()
//        
//        reviewViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
//        self.present(reviewViewController, animated: true)
//    }
//    
//    func layoutSubviews() {
//        
//        view.addSubview(addReview)
//        //        view.addSubview(collectionView)
//        
//        // addReview constraints
//        addReview.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -40).isActive = true
//        addReview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
//        addReview.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        addReview.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        
//        // CollectionView constraints
//        collectionView?.topAnchor.constraint(equalTo: view.topAnchor , constant: 0).isActive = true
//        collectionView?.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        collectionView?.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        collectionView?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        
//    }
//    
//    
//}

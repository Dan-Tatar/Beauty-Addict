//
//  SecondViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = UIColor(white: 0, alpha: 0.4)
       layoutSubviews()
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    

    let reviewUIView: UIView = {
       let RU = UIView()
        RU.translatesAutoresizingMaskIntoConstraints = false
        RU.backgroundColor = UIColor.white
        RU.layer.cornerRadius = 15
        RU.backgroundColor = UIColor(red: 246.0/255.0, green: 246.0/255.0, blue: 246.0/255.0, alpha: 1.0)
        return RU
    }()
    let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Add review"
        title.font = UIFont.boldSystemFont(ofSize: 20)
        return title
    }()

    let review: UITextField = {
        let rev = UITextField()
        rev.translatesAutoresizingMaskIntoConstraints = false
        rev.placeholder = "Type review"
        rev.backgroundColor = UIColor.white
        return rev
    }()
    let cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.blue, for: .normal)
        button.backgroundColor = UIColor.white
        button.addTarget(self, action:  #selector(cancelPressed), for: .touchUpInside)
        button.setTitle("Cancel", for: .normal)
        return button
    }()
    
    @objc func cancelPressed() {
        dismiss(animated: true, completion: nil)
    }
    func layoutSubviews() {
    
        view.addSubview(reviewUIView)
        reviewUIView.addSubview(cancelButton)
        reviewUIView.addSubview(titleLabel)
        reviewUIView.addSubview(review)
        
        // titleLabel constraints
        titleLabel.topAnchor.constraint(equalTo: reviewUIView.topAnchor, constant: 8).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // reviewUIView constraints
        reviewUIView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        reviewUIView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        reviewUIView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        reviewUIView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        // cancelButton constraints
        cancelButton.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 8).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: reviewUIView.bottomAnchor, constant: -8).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        review.centerYAnchor.constraint(equalTo: reviewUIView.centerYAnchor).isActive = true
        review.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 12).isActive = true
        review.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -12).isActive = true
        review.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    

 }

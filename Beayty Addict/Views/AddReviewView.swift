////
////  AddReviewView.swift
////  Beayty Addict
////
////  Created by Dan  Tatar on 03/01/2019.
////  Copyright © 2019 Dany. All rights reserved.
////

import UIKit
import Cosmos

class AddReviewView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        createSubviews()
    }

    let reviewUIView: UIView = {
        let ru = UIView()
        ru.translatesAutoresizingMaskIntoConstraints = false
        ru.backgroundColor = UIColor.white
        ru.layer.cornerRadius = 15
        ru.backgroundColor = UIColor(red: 246.0/255.0, green: 246.0/255.0, blue: 246.0/255.0, alpha: 1.0)
        return ru
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitle("Cancel", for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        button.setTitle("Save", for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Add review"
        title.font = UIFont.boldSystemFont(ofSize: 20)
        return title
    }()
    
    let nameTextField: UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.placeholder = " Type name"
        name.backgroundColor = UIColor.white
        name.layer.borderColor = UIColor.gray.cgColor
        name.layer.borderWidth = 0.5
        return name
    }()
    
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.settings.fillMode = .half
        view.settings.starSize = 26
        return view
    }()
    
    let reviewTextField: UITextField = {
        let rev = UITextField()
        rev.translatesAutoresizingMaskIntoConstraints = false
        rev.placeholder = " Type review"
        rev.backgroundColor = UIColor.white
        rev.layer.borderColor = UIColor.gray.cgColor
        rev.layer.borderWidth = 0.5
        return rev
    }()
    
    
    func createSubviews() {
     
        self.addSubview(reviewUIView)
        reviewUIView.addSubview(cancelButton)
        reviewUIView.addSubview(titleLabel)
        reviewUIView.addSubview(reviewTextField)
        reviewUIView.addSubview(saveButton)
        reviewUIView.addSubview(nameTextField)
        reviewUIView.addSubview(cosmosView)
        
        reviewUIView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        reviewUIView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        reviewUIView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        reviewUIView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        // cancelButton constraints
        cancelButton.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 8).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: reviewUIView.bottomAnchor, constant: -8).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: reviewUIView.topAnchor, constant: 8).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // cancelButton constraints
        saveButton.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -8).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: reviewUIView.bottomAnchor, constant: -8).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        // nameTextField constraints
        nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 12).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        // ratingTextField constraints
        //        cosmosView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        cosmosView.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -12).isActive = true
        cosmosView.leftAnchor.constraint(equalTo: nameTextField.rightAnchor, constant: 12).isActive = true
        //        cosmosView.widthAnchor.constraint(equalTo: reviewTextField.widthAnchor ).isActive = true
        cosmosView.centerYAnchor.constraint(equalTo: nameTextField.centerYAnchor).isActive = true
        // reviewTextField contraints
        reviewTextField.centerYAnchor.constraint(equalTo: reviewUIView.centerYAnchor).isActive = true
        reviewTextField.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 12).isActive = true
        reviewTextField.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -12).isActive = true
        reviewTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}

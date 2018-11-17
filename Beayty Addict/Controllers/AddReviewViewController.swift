//
//  SecondViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit
import Firebase
import Cosmos
import TinyConstraints
//import NotificationCenter

class AddReviewViewController: UIViewController {

   
    var doneSaving: (() -> ())?
    var reviewsVC : ReviewsViewController?
    
    let ref = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = UIColor(white: 0, alpha: 0.4)
       layoutSubviews()
       
        cosmosView.didTouchCosmos = { rating in
            print("\(rating)")
            
         
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //add observer for keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)

    }
    
    // move the origin of y higher for UIView to be visible when keyboard appears
    @objc func keyboardWillShow(notification: NSNotification) {
                    self.view.frame.origin.y -= 55
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

    let nameTextField: UITextField = {
        let rev = UITextField()
        rev.translatesAutoresizingMaskIntoConstraints = false
        rev.placeholder = "Type name"
        rev.backgroundColor = UIColor.white
        return rev
    }()
    
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
          view.translatesAutoresizingMaskIntoConstraints = false
        view.settings.fillMode = .full
        view.settings.starSize = 26
        return view
    }()
    let reviewTextField: UITextField = {
        let rev = UITextField()
        rev.translatesAutoresizingMaskIntoConstraints = false
        rev.placeholder = "Type review"
        rev.backgroundColor = UIColor.white
        return rev
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        button.addTarget(self, action:  #selector(cancelPressed), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitle("Cancel", for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    //func called when cancelButton is pressed
    @objc func cancelPressed() {
        dismiss(animated: true, completion: nil)
        
    }
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        button.addTarget(self, action:  #selector(savePressed), for: .touchUpInside)
        button.setTitle("Save", for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    // func called when saveButton is pressed
    @objc func savePressed() {

       guard  reviewTextField.text != "" else {

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.image = #imageLiteral(resourceName: "icons8-error-26")
        reviewTextField.rightView = imageView
        reviewTextField.rightViewMode = .always

        reviewTextField.layer.borderColor = UIColor.red.cgColor
        reviewTextField.layer.borderWidth = 2
        reviewTextField.placeholder = "No text added"
        
        return
        }
        
        reviewsVC?.createReview(newReview: reviewTextField.text!)
        print(reviewTextField.text!)
  
        if let doneSaving = doneSaving {
            doneSaving()
            print(doneSaving)
            
            //Saving in the Firebase database
       
            let reviewItem = self.ref.child("Reviews")

            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            let date = formatter.string(from: Date())
            let data = ["Product": reviewsVC?.productReviews?.name, "userName": nameTextField.text, "rating": cosmosView.rating,  "review": reviewTextField.text, "date": date ] as [String : Any]
           
            reviewItem.childByAutoId().setValue(data) {
               (error, ref) in
                if error != nil {
                    print(error)
                } else {
                    print("Message saved succesfully")
                }
            }

        }
        
        dismiss(animated: true)
    }
    
    func layoutSubviews() {
    
        view.addSubview(reviewUIView)
        reviewUIView.addSubview(cancelButton)
        reviewUIView.addSubview(titleLabel)
        reviewUIView.addSubview(reviewTextField)
        reviewUIView.addSubview(saveButton)
        reviewUIView.addSubview(nameTextField)
        reviewUIView.addSubview(cosmosView)
        
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
        cancelButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        // cancelButton constraints
        saveButton.rightAnchor.constraint(equalTo: reviewUIView.rightAnchor, constant: -8).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: reviewUIView.bottomAnchor, constant: -8).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        saveButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        // nameTextField constraints
        nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: reviewUIView.leftAnchor, constant: 12).isActive = true
//        nameTextField.widthAnchor.constraint(equalToConstant: 170).isActive = true
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

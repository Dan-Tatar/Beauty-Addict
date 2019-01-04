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


class AddReviewViewController: UIViewController, UITextFieldDelegate {
    
  
    var addReviewView = AddReviewView()
    var doneSaving: (() -> ())?
    var reviewsVC : ReviewsViewController?
    let ref = Database.database().reference()
    
    lazy var cosmosView = addReviewView.cosmosView
    lazy var nameTextField = addReviewView.nameTextField
    lazy var reviewTextField = addReviewView.reviewTextField
    lazy var cancelButton = addReviewView.cancelButton
    lazy var saveButton = addReviewView.saveButton
    
    override func loadView() {

        view = addReviewView
        cancelButton.addTarget(self, action:  #selector(cancelPressed), for: .touchUpInside)
        saveButton.addTarget(self, action:  #selector(savePressed), for: .touchUpInside)
   
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0, alpha: 0.4)

        cosmosView.didTouchCosmos = { rating in
            print("\(rating)")
        }
        nameTextField.delegate = self
        reviewTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        //add observer for keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
    }
    
    // move the origin of y higher for UIView to be visible when keyboard appears
    @objc func keyboardWillShow(notification: NSNotification) {
        self.view.frame.origin.y -= 55
    }

    //func called when cancelButton is pressed
    @objc func cancelPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case nameTextField:
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor(red: 27/255, green: 95/255, blue: 180/255, alpha: 1).cgColor
            reviewTextField.layer.borderColor = UIColor.gray.cgColor
            reviewTextField.layer.borderWidth = 0.5
        case reviewTextField:
            reviewTextField.layer.borderWidth = 1
            reviewTextField.layer.borderColor = UIColor(red: 27/255, green: 95/255, blue: 180/255, alpha: 1).cgColor
            nameTextField.layer.borderColor = UIColor.gray.cgColor
            nameTextField.layer.borderWidth = 0.5
        default:
            break
            
        }
        
    }
    // func called when saveButton is pressed
    @objc func savePressed() {
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        reviewTextField.rightViewMode = .never
        nameTextField.rightViewMode = .never
        
        reviewTextField.layer.borderColor = UIColor.gray.cgColor
        reviewTextField.layer.borderWidth = 0.5
        reviewTextField.placeholder = " Type review"
        
        nameTextField.layer.borderColor = UIColor.gray.cgColor
        nameTextField.layer.borderWidth = 0.5
        nameTextField.placeholder = " Type review"
        
        
        guard  nameTextField.text != "" else {
            
            imageView.image = #imageLiteral(resourceName: "icons8-error-26")
            nameTextField.rightView = imageView
            nameTextField.rightViewMode = .always
            
            nameTextField.layer.borderColor = UIColor.red.cgColor
            nameTextField.layer.borderWidth = 2
            nameTextField.placeholder = " No text added"
            
            return
        }
        guard  reviewTextField.text != "" else {
            
            imageView.image = #imageLiteral(resourceName: "icons8-error-26")
            reviewTextField.rightView = imageView
            reviewTextField.rightViewMode = .always
            reviewTextField.layer.borderColor = UIColor.red.cgColor
            reviewTextField.layer.borderWidth = 2
            reviewTextField.placeholder = " No text added"
            
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
}

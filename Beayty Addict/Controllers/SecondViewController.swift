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
        return RU
    }()

    func layoutSubviews() {
    
        view.addSubview(reviewUIView)
        
        reviewUIView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        reviewUIView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        reviewUIView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        reviewUIView.widthAnchor.constraint(equalToConstant: 350).isActive = true
    }
    


 }

//
//  HomeViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/10/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Beauty addict"
//        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "CaviarDreams", size: 20)!]
        view.backgroundColor = UIColor.white

       setupViews()
     
    }
    
    var beautyImage: UIImageView = {
        let ip = UIImageView()
        ip.translatesAutoresizingMaskIntoConstraints = false
        //   ip.contentMode = .scaleAspectFit
        ip.image = UIImage(named: "beauty")
        ip.layer.borderColor = UIColor.black.cgColor
        ip.layer.masksToBounds = true
        ip.layer.borderWidth = 0.2
        ip.layer.cornerRadius = 10

        return ip
    }()


    
    var beautyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choose your perfect products"
           label.font = UIFont (name: "GillSans-SemiBoldItalic", size: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    func setupViews() {
        
        view.addSubview(beautyImage)
        view.addSubview(beautyLabel)

        beautyImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        beautyImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        beautyImage.heightAnchor.constraint(equalToConstant: 500).isActive = true
        beautyImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true

        beautyLabel.topAnchor.constraint(equalTo: beautyImage.bottomAnchor, constant: 2).isActive = true
        beautyLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        beautyLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        beautyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true

}
}

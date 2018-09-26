//
//  ReviewsViewControllerTableViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 23/09/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cellID = "CellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        layoutSubviews()
        
        
        let tableView: UITableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height-100)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    var addReview : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        button.setImage(#imageLiteral(resourceName: "plus"), for: .normal)
        button.addTarget(self, action:  #selector(review), for: .touchUpInside)
        return button
    }()
    
    @objc func review() {
        let reviewViewController = AllReviewViewController()
        
        reviewViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        self.present(reviewViewController, animated: true)
    }
    
    func layoutSubviews() {
        
        view.addSubview(addReview)
        
        addReview.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -40).isActive = true
        addReview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
        addReview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addReview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}

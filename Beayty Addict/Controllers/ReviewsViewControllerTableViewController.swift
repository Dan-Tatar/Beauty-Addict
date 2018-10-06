//
//  ReviewsViewControllerTableViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 23/09/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static var allReviews: [String] = ["This product is really good", "I've used this mascara for years and I love it. I often get mistaken for wearing false lashes when I use this. I prefer to use it when the formula gets a little tacky.", "This mascara is actually smaller than I thought it would be when it was received."]
    
     func createReview(newReview: String) {
        ReviewsViewController.allReviews.append(newReview)
    }
       var cellID = "CellID"
    
        let tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 240/255, green: 239/255, blue: 241/255, alpha: 1)
        layoutSubviews()
        tableView.backgroundColor = UIColor(red: 240/255, green: 239/255, blue: 241/255, alpha: 1)
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height-100)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        tableView.register(ReviewCell.self, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ReviewCell
        cell?.review.text = ReviewsViewController.allReviews[indexPath.row]
        cell?.backgroundColor = UIColor(red: 240/255, green: 239/255, blue: 241/255, alpha: 1)
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ReviewsViewController.allReviews.count
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
        let popup = AddReviewViewController()
        
        popup.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        popup.doneSaving =
            { [weak self] in
            
            self?.tableView.reloadData()
            
        }
       self.present(popup, animated: true)
    }
    
    func layoutSubviews() {
        
        view.addSubview(addReview)
        
        addReview.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -40).isActive = true
        addReview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
        addReview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addReview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}

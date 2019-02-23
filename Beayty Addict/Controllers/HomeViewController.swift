//
//  HomeViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/10/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        createNavigationTitle()
    }
    
    func createNavigationTitle() {
        let titlelabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        titlelabel.text = "Beauty addict"
        titlelabel.textAlignment = .center
        titlelabel.font = UIFont.boldSystemFont(ofSize: 20)
        titlelabel.textColor = UIColor.white
        navigationItem.titleView = titlelabel
    }
}

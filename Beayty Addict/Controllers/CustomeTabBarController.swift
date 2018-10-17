//
//  CustomeTabBarController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/10/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tabBar.barTintColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        self.tabBar.selectedImageTintColor = UIColor.white
        self.tabBar.unselectedItemTintColor = UIColor.gray
        tabBar.isTranslucent = false
        
        setControllers()
    }
    
    func setControllers() {
        
        let homeVC = HomeViewController()
        let homeController = UINavigationController(rootViewController: homeVC)
        homeController.tabBarItem.image = UIImage(named: "home")
        homeController.title = "Home"
        
        
        let categoriesVC = CategoriesViewController()
        let categoriesController = UINavigationController(rootViewController: categoriesVC)
        categoriesVC.title = "Category"
        categoriesController.tabBarItem.image = UIImage(named: "categories")
        UINavigationBar.appearance().barTintColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
        
        viewControllers = [homeController, categoriesController]
    }
}

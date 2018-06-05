//
//  FirstViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var categories = [MainCathegories]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        categories = MainCathegories.categoriesArray()
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return categories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category =  categories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoriesCell
      // cell.beautyCategoriesImageView.image = category.image
       cell.setCategories(categories: category)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

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
    func productAtIndexPath(_ indexPath: IndexPath) -> MainCathegories {
        
        let category = categories[indexPath.section]
        return category
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProductsSegue" {
            //   let dest = segue.destination as! UINavigationController
            if let segueProduct = segue.destination as? ItemViewController {
            //    segueProduct.items = [categories[2]]
//                if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
//                    segueProduct.items = productAtIndexPath(indexPath)
                if let indexPath = tableView.indexPathForSelectedRow {
                    let selectedRow = indexPath.row
                    segueProduct.items =  [categories[indexPath.row]]
            }
        }
    }
}
}
//let productDetailVC = segue.destination as! ProductDetailViewController
//if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
//    productDetailVC.product = productAtIndexPath(indexPath)
//}

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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        performSegue(withIdentifier: "ProductsSegue", sender: self)
    }
  

}

//
//  FirstViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
    var categories = [MainCathegories]()
    
    let categoryID =  "categoryID"
    
//   var tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        navigationItem.title = "Beauty Addict"

        categories = MainCathegories.categoriesArray()
        
//        collectionView?.register(CategoriesCell.self, forCellWithReuseIdentifier: categoryID)
//        collectionView?.backgroundColor = .white
        tableView.backgroundColor = .white
//        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain )
        tableView.register(CategoriesCell.self, forCellReuseIdentifier:  categoryID)
//         self.view.addSubview(tableView)
  
    }
    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return categories.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let category =  categories[indexPath.row]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryID, for: indexPath) as! CategoriesCell
//        //   cell.backgroundColor = .red
//        cell.setCategories(categories: category)
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.width, height: 250)
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//          let itemViewController = ItemViewController()
//
//        if let indexPath = collectionView.indexPathsForSelectedItems {
//                                itemViewController.items =  [categories[indexPath.row]]
//                            }
//          navigationController?.pushViewController( itemViewController, animated: true)
//        performSegue(withIdentifier: "ProductsSegue", sender: self)
//
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ProductsSegue" {
//
//            if let segueProduct = segue.destination as? ItemViewController {
//
//                if let indexPath = tableView.indexPathForSelectedRow {
//                    segueProduct.items =  [categories[indexPath.row]]
//                }
//            }
//        }
//    }
}

extension HomeViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category =  categories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: categoryID, for: indexPath) as! CategoriesCell
//         cell.beautyCategoriesImageView.image = category.image

        cell.setCategories(categories: category)
        cell.selectionStyle = .none
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        performSegue(withIdentifier: "ProductsSegue", sender: self)
        let itemViewController = ItemViewController()
        
        if let indexPath = tableView.indexPathForSelectedRow {
                                        itemViewController.items =  [categories[indexPath.row]]
                                    }

                  navigationController?.pushViewController( itemViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}




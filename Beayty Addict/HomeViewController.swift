//
//  FirstViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var categories = [MainCathegories]()
    
    let categoryID =  "categoryID"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Beauty Addict"
        collectionView?.backgroundColor = .white
        categories = MainCathegories.categoriesArray()
        collectionView?.register(CategoriesCell.self, forCellWithReuseIdentifier: categoryID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let category =  categories[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryID, for: indexPath) as! CategoriesCell
        //   cell.backgroundColor = .red
        cell.setCategories(categories: category)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ProductsSegue", sender: self)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProductsSegue" {
            
            if let segueProduct = segue.destination as? ItemViewController {
                
                if let indexPath = tableView.indexPathForSelectedRow {
                    segueProduct.items =  [categories[indexPath.row]]
                }
            }
        }
    }
}




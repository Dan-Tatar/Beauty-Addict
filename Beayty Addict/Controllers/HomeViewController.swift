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
        
        
        let itemViewController = ItemViewController()
        
        if let selectedRow = tableView.indexPathForSelectedRow {
            itemViewController.items =  [categories[selectedRow.row]]
        }
        
        navigationController?.pushViewController( itemViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}




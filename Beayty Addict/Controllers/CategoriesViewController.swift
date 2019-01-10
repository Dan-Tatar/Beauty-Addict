//
//  FirstViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class CategoriesViewController: UITableViewController {
    
    // Instantiate array of categories
    var categories = [MainCathegories]()

    let categoryID =  "categoryID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.register(CategoriesCell.self, forCellReuseIdentifier:  categoryID)
        categories = CategoriesModel().categoriesArray()
    }
}

extension CategoriesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category =  categories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: categoryID, for: indexPath) as! CategoriesCell
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




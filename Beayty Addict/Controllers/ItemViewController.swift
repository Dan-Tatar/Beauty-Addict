//
//  ItemViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 02/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ItemViewController:  UITableViewController {
    
    var  items: [MainCathegories] = []
    let productID =  "productID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ProductCell.self, forCellReuseIdentifier:  productID)
        navigationItem.backBarButtonItem?.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor(red: 240/255, green: 111/255, blue: 107/255, alpha: 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

extension ItemViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let category = items[section]
        return category.products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section].products[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: productID) as? ProductCell
        cell?.setProducts(list: item)
        cell?.selectionStyle = .none
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        if let selectedRow = tableView.indexPathForSelectedRow {
            detailViewController.product =  items[indexPath.section].products[indexPath.row]
        }
        navigationController?.pushViewController( detailViewController, animated: true)
    }
}































//    func productAtIndexPath(_ indexPath: IndexPath) -> Product
//    {
//        let productLine = items[indexPath.section]
//        return productLine.products[indexPath.row]
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "DetailSegue" {
//            let detail = segue.destination as? DetailViewController
//
//            if let indexPath = tableView.indexPathForSelectedRow {
//
//                detail?.product = productAtIndexPath(indexPath)
//            }
//        }
//    }

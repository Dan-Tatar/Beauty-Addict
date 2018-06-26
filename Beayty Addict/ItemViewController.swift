//
//  ItemViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 02/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    

    var  items: [MainCathegories] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    func productAtIndexPath(_ indexPath: IndexPath) -> Product
    {
        let productLine = items[indexPath.section]
        return productLine.products[indexPath.row]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            let detail = segue.destination as? DetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
       
                detail?.product = productAtIndexPath(indexPath)
            }
        }
    }
}
extension ItemViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let category = items[section]
        return category.products.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section].products[indexPath.row]
        //   print(\(items)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as? ProductCell
        cell?.setProducts(list: item)
        cell?.selectionStyle = .none
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:  "DetailSegue", sender: self)
    }
    
}


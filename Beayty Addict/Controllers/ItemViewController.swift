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
    
//    var tableView: UITableView = {
//        let tb = UITableView()
//        tb.translatesAutoresizingMaskIntoConstraints = false
//        return tb
//    }()
    
//    func setupViews() {
////        view.addSubview(tableView)
//        
//        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//    }
    //  @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
         tableView.register(ProductCell.self, forCellReuseIdentifier:  productID)
//        setupViews()
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
//        performSegue(withIdentifier:  "DetailSegue", sender: self)
        let detailViewController = DetailViewController()
        navigationController?.pushViewController( detailViewController, animated: true)
    }
    
    
}


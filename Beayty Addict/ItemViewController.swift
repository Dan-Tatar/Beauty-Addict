//
//  ItemViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 02/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
  //  var pr: MainCathegories = []
    var  items: [MainCathegories] = {
        return MainCathegories.categoriesArray()
    }()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    //  items = MainCathegories.categoriesArray()
     tableView.delegate = self
    tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
}
extension ItemViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let category = items[section]
        return category.products.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section].products[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as? ProductCell
        cell?.setProducts(list: item)
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


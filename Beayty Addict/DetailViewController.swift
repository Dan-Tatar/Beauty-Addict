//
//  DetailViewController.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 14/06/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var product : Product?
   
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productRating: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
        productName.text = product?.name
        productImage.image = product?.imageProduct
        productDescription.text = product?.description
        productRating.text = String(describing: product?.rating)
//        setProduct(productDetail: product)
    }
//    func setProduct(productDetail: Product) {
//        productName.text = productDetail?.name
//        productImage.image = productDetail?.imageProduct
//        productDescription.text = productDetail?.description
//        productRating.text = String(productDetail?.rating)
//    }
   
}

//extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let detail = product
//        print("\(product))")
//        let cell = tableView.dequeueReusableCell(withIdentifier: "DEtailCell") as? DetailProductCell
//        cell?.setProduct(productDetail: detail!)
//        return cell!
//    }
//   
//    
//}


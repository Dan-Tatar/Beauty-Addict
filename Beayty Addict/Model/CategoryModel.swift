//
//  CategoryModel.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 10/01/2019.
//  Copyright © 2019 Dany. All rights reserved.
//

import UIKit
import Firebase

class CategoriesModel {
    
    var allProducts = [Product]()
    //Create arrays to store the products for each main actegory
    var mascaraArray = [Product]()
    var foundationArray = [Product]()
    var makeUpArray = [Product]()
    var lipstickArray = [Product]()
    
    // Create objects for the main categories
    lazy var mascara: MainCathegories = MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"), products: mascaraArray)
    lazy var lipstick = MainCathegories(category: "Lipstick", image: #imageLiteral(resourceName: "lipstick"), products: lipstickArray)
    lazy var foundation = MainCathegories(category: "Foundation", image: #imageLiteral(resourceName: "foundation"), products: foundationArray)
    lazy var makeUp =  MainCathegories(category: "Makeup", image: #imageLiteral(resourceName: "makeUp"), products: makeUpArray)
    
    func categoriesArray() -> [MainCathegories] {
        return [mascara, foundation, makeUp, lipstick]
    }
    
    func retrieveData() {
        let reviewDB = Database.database().reference().child("Product")
        
        reviewDB.observe(.childAdded, with: { (snapshot) in
            let snapShotValue = snapshot.value as? Dictionary<String, AnyObject>
            
            let name = snapShotValue?["Product"] as? String
            let imageURL = snapShotValue?["imageURL"] as? String
            let description = snapShotValue?["description"] as? String
            let category = snapShotValue?["category"] as? String
            
            let product = Product(name: name!, imageProduct: imageURL!, description: description!, category: category!)
       
                self.allProducts.append(product)
            
            print("Product is sscond \(product.imageProduct)")
        })
    }

}

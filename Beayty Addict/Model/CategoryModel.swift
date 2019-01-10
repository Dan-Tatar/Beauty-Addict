//
//  CategoryModel.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 10/01/2019.
//  Copyright © 2019 Dany. All rights reserved.
//

import UIKit


class CategoriesModel {
    
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
}

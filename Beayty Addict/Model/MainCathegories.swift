//
//  CategoriesModel.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class MainCathegories {
    
    var category: String
    var image: UIImage
    var products = [Product]()
    
    init(category: String, image: UIImage, products: [Product]) {
        self.category = category
        self.image = image
        self.products = products
    }
}




















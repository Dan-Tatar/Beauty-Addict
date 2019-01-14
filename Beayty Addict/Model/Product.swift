//
//  Data.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var name: String
    var imageProduct: String?
    var description: String
    var category: String
    
    init(name: String, imageProduct: String, description: String, category: String) {
        self.name = name
        self.imageProduct = imageProduct
        self.description = description
        self.category = category
    }
}



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
    var imageProduct: UIImage
    var description : String
    var rating: Double
    
    init(name: String, imageProduct: UIImage, description: String, rating: Double) {
        self.name = name
        self.imageProduct = imageProduct
        self.description = description
        self.rating = rating
    }
}

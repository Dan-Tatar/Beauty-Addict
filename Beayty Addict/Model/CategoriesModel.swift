//
//  CategoriesModel.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import  UIKit

class MainCathegories {
    
    var category: String
    var image: UIImage
    
    init(category: String, image: UIImage) {
        self.category = category
        self.image = image
    }
    
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
    
    
    
    class func dataArray() -> [MainCathegories] {
        var tempArray = [MainCathegories]()
        
        var mascara = MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"))
        var lipstick = MainCathegories(category: "Lipstick", image: #imageLiteral(resourceName: "lipstick"))
        var foundation = MainCathegories(category: "Foundation", image: #imageLiteral(resourceName: "foundation"))
        var makeUp = MainCathegories(category: "MakeUp", image: #imageLiteral(resourceName: "makeUp") )
        
        tempArray.append(mascara)
        tempArray.append(lipstick)
        tempArray.append(foundation)
        tempArray.append(makeUp)
        
        return tempArray
    }
  
    
   
    
}

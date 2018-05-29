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
    
    var categories: String
    var image: UIImage
    
    init(categories: String, image: UIImage) {
        self.categories = categories
        self.image = image
    }
  
        
    class func dataArray() -> [MainCathegories] {
        var tempArray = [MainCathegories]()
        
        var mascara = MainCathegories(categories: "Mascara", image: #imageLiteral(resourceName: "mascara"))
        var lipstick = MainCathegories(categories: "Lipstick", image: #imageLiteral(resourceName: "lipstick"))
        var foundation = MainCathegories(categories: "Foundation", image: #imageLiteral(resourceName: "foundation"))
        var makeUp = MainCathegories(categories: "MakeUp", image: #imageLiteral(resourceName: "makeUp") )
        
        tempArray.append(mascara)
        tempArray.append(lipstick)
        tempArray.append(foundation)
        tempArray.append(makeUp)
            
            return tempArray
        }
  
    
   
    
}

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
    var products = [Product]()
    init(category: String, image: UIImage, productList: [Product]) {
        self.category = category
        self.image = image
        self.products = productList
    }
    
    class func categoriesArray() -> [MainCathegories] {
        
        
        return [self.mascaraArray(), self.lipstickArray(), self.foundationArray(), self.makeupArray()]
        //        var mascara = MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"))
        //        var lipstick = MainCathegories(category: "Lipstick", image: #imageLiteral(resourceName: "lipstick"))
        //        var foundation = MainCathegories(category: "Foundation", image: #imageLiteral(resourceName: "foundation"))
        //        var makeUp = MainCathegories(category: "MakeUp", image: #imageLiteral(resourceName: "makeUp") )
        //
        //        tempArray.append(mascara)
        //        tempArray.append(lipstick)
        //        tempArray.append(foundation)
        //        tempArray.append(makeUp)
        //        mascara.products = Product(name: <#T##String#>, imageProduct: <#T##UIImage#>, description: <#T##String#>, rating: <#T##Double#>)
        //        return tempArray
    }
    
    class func mascaraArray() -> MainCathegories {
        
        var products = [Product]()
        let maybelline = Product(name: "Maybelline Mascara Lash Sensational",
                                 imageProduct: #imageLiteral(resourceName: "maybelineMascara"),
                                 description: "Liquid ink formula with a low wax count creates black lashes that are dark and defined",
                                 rating: 8.8,
                                 url: "htts://amzn.to/2NS27Hj")
        products.append(maybelline)
        let xxx = Product(name: " Mascara Lash Sensational",
                          imageProduct: #imageLiteral(resourceName: "mascara"),
                          description: "Liquid ink formula with a low wax count creates black lashes that are dark and defined",
                          rating: 8.8,
                          url: "https://amzn.to/2NS27Hj")
        products.append(xxx)
        return MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"), productList: products)
    }
    class func lipstickArray() -> MainCathegories {
        
        var products = [Product]()
        let dior = Product(name: "LipstickDior",
                           imageProduct: #imageLiteral(resourceName: "lipstickDior"),
                           description: "Lipstick designed for all lips",
                           rating: 9.8,
                           url: "https://amzn.to/2NS27Hj")
        products.append(dior)
        return MainCathegories(category: "Lipstick", image: #imageLiteral(resourceName: "lipstick"), productList: products)
    }
    
    class func foundationArray() -> MainCathegories {
        
        var products = [Product]()
        var macFoundation = Product(name: "Mac Foundation",
                                    imageProduct: #imageLiteral(resourceName: "macFoundation"),
                                    description: "Foundation without paraben",
                                    rating: 7.8,
                                    url: "https://amzn.to/2NS27Hj")
        products.append(macFoundation)
        return MainCathegories(category: "Foundation", image: #imageLiteral(resourceName: "foundation"), productList: products)
    }
    class func makeupArray() -> MainCathegories {
        
        var products = [Product]()
        var maybelline = Product(name: "Makeup",
                                 imageProduct: #imageLiteral(resourceName: "makeUpChanel-1"),
                                 description: "High quality makeup",
                                 rating: 4.8,
                                 url: "https://amzn.to/2NS27Hj")
        products.append(maybelline)
        return MainCathegories(category: "Makeup", image: #imageLiteral(resourceName: "makeUp"), productList: products)
    }
}

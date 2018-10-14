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
    
    static func categoriesArray() -> [MainCathegories] {
        
        return [self.mascaraArray(), self.lipstickArray(), self.foundationArray(), self.makeupArray()]
        
    }
    
    static func mascaraArray() -> MainCathegories {
        
        var products = [Product]()
        var maybelline = Product(name: "Maybelline Mascara Lash Sensational",
                                 imageProduct: #imageLiteral(resourceName: "maybelineMascara"),
                                 description: "Liquid ink formula with a low wax count creates black lashes that are dark and defined",
                                 rating: 8.8, review: ["This product is really good", "I've used this mascara for years and I love it. I often get mistaken for wearing false lashes when I use this. I prefer to use it when the formula gets a little tacky.", "This mascara is actually smaller than I thought it would be when it was received."],
                                 url: "htts://amzn.to/2NS27Hj")
        products.append(maybelline)
        var mascara = Product(name: " Mascara Lash Sensational",
                              imageProduct: #imageLiteral(resourceName: "mascara"),
                              description: "Liquid ink formula with a low wax count creates black lashes that are dark and defined",
                              rating: 8.8, review: ["I've used this mascara for years and I love it. I often get mistaken for wearing false lashes when I use this. I prefer to use it when the formula gets a little tacky."],
                              url: "https://amzn.to/2NS27Hj")
        products.append(mascara)
        return MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"), productList: products)
    }
    static func lipstickArray() -> MainCathegories {
        
        var products = [Product]()
        var dior = Product(name: "LipstickDior",
                           imageProduct: #imageLiteral(resourceName: "lipstickDior"),
                           description: "Lipstick designed for all lips",
                           rating: 9.8, review: ["Good product"],
                           url: "https://amzn.to/2NS27Hj")
        products.append(dior)
        return MainCathegories(category: "Lipstick", image: #imageLiteral(resourceName: "lipstick"), productList: products)
    }
    
    static func foundationArray() -> MainCathegories {
        
        var products = [Product]()
        var macFoundation = Product(name: "Mac Foundation",
                                    imageProduct: #imageLiteral(resourceName: "macFoundation"),
                                    description: "Foundation without paraben",
                                    rating: 7.8, review: [""],
                                    url: "https://amzn.to/2NS27Hj")
        products.append(macFoundation)
        return MainCathegories(category: "Foundation", image: #imageLiteral(resourceName: "foundation"), productList: products)
    }
    static func makeupArray() -> MainCathegories {
        
        var products = [Product]()
        var maybelline = Product(name: "Makeup",
                                 imageProduct: #imageLiteral(resourceName: "makeUpChanel-1"),
                                 description: "High quality makeup",
                                 rating: 4.8, review: [""],
                                 url: "https://amzn.to/2NS27Hj")
        products.append(maybelline)
        return MainCathegories(category: "Makeup", image: #imageLiteral(resourceName: "makeUp"), productList: products)
    }
}

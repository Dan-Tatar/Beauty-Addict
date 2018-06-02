//
//  Data.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 28/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit


class DataM {
    
    func dataArray() -> [MainCathegories] {
        
        var tempArray = [MainCathegories]()
        
        var mascara = MainCathegories(category: "Mascara", image: #imageLiteral(resourceName: "mascara"))
        
           tempArray.append(mascara)
        
        return tempArray
}
}

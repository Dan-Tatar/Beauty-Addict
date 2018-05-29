//
//  CategoriesCell.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 29/05/2018.
//  Copyright © 2018 Dany. All rights reserved.
//

import Foundation
import UIKit

class CategoriesCell: UITableViewCell {
    
    @IBOutlet weak var beautyCategoriesImageView: UIImageView!
    
    func setCategories(categories: MainCathegories) {
        beautyCategoriesImageView.image = categories.image
    }
    
}

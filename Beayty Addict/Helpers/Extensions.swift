//
//  Extensions.swift
//  Beayty Addict
//
//  Created by Dan  Tatar on 29/01/2019.
//  Copyright © 2019 Dany. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()
 
extension UIImageView {
    
  
    func loadImageUsingCacheWithUlString(urlString: String) {
        
        self.image = nil
        if let cachedImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cachedImage
            return
        }
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            print("Data is\(data)")
            if error != nil {
                print("Error is\(error)")
                return }
            DispatchQueue.main.async {
              
                if let downloadedimage = UIImage(data: data!) {
                    imageCache.setObject(downloadedimage, forKey: urlString as AnyObject)
                    self.image = downloadedimage
                    
                }
              
                
             
            }
            
        }).resume()
    }
}

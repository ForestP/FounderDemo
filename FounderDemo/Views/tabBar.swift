//
//  tabBar.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/19/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

@IBDesignable
class tabBar: UITabBarItem {

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup(){
        if let image = image {
            self.image = image.withRenderingMode(.alwaysOriginal)
        }
        if let selectedImage = selectedImage {
            self.image = image?.withRenderingMode(.alwaysOriginal)
        }
    }
}

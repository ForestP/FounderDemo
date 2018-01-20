//
//  roundedImage.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/5/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class roundedImage: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

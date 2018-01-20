//
//  pollBorderView.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/19/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class pollBorderView: UIView {

    override func layoutSubviews() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = SEPERATOR_MAIN.cgColor
        self.layer.cornerRadius = 15
    }

}

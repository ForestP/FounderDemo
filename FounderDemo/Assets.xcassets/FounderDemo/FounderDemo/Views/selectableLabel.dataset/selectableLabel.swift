//
//  selectableLabel.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/7/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class selectableLabel: UILabel {

    override func layoutSubviews() {
        self.textColor = SELECTED_BLUE
    }
}

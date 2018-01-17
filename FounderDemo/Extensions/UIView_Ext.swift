//
//  File.swift
//  insight
//
//  Created by Forest Plasencia on 12/26/17.
//  Copyright © 2017 Forest Plasencia. All rights reserved.
//

import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

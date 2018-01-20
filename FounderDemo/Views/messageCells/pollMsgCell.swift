//
//  pollMsgCell.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/19/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class pollMsgCell: UITableViewCell, NibLoadableView {

    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pressed1(_ sender: Any) {
        if btn1.isSelected {
            btn1.isSelected = false
        } else {
            btn1.isSelected = true
        }
    }
    @IBAction func pressed2(_ sender: Any) {
        if btn2.isSelected {
            btn2.isSelected = false
        } else {
            btn2.isSelected = true
        }
    }
    @IBAction func pressed3(_ sender: Any) {
        if btn3.isSelected {
            btn3.isSelected = false
        } else {
            btn3.isSelected = true
        }
    }
    @IBAction func pressed4(_ sender: Any) {
        if btn4.isSelected {
            btn4.isSelected = false
        } else {
            btn4.isSelected = true
        }
    }
    @IBAction func pressed5(_ sender: Any) {
        if btn5.isSelected {
            btn5.isSelected = false
        } else {
            btn5.isSelected = true
        }
    }
    
}

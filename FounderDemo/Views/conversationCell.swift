//
//  conversationCell.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/5/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class conversationCell: UITableViewCell, NibLoadableView {

    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var lastMsgLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(chat: Chat) {
        let name = chat.chatUser.name
        let image = chat.chatUser.avatarString
        let message = chat.chatMessages[chat.chatMessages.count - 1].messageText
        
        self.nameLbl.text = name
        self.avatarImg.image = UIImage(named: image)
        self.lastMsgLbl.text = message
    }
    
}

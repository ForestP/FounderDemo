//
//  Message.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation

class Message {

    private var _messageText: String!
    
    var messageText: String {
        return _messageText
    }

    init(message: String){
        self._messageText = message
    }
}

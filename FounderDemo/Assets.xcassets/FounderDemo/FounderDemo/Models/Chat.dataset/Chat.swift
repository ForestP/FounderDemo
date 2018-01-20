//
//  Chat.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation

class Chat {
    private var _chatUser: User!
    private var _chatMessages: [Message]!

    var chatUser: User {
        return _chatUser
    }
    var chatMessages: [Message] {
        return _chatMessages
    }
    
    init(user: User, messages: [Message]){
        self._chatUser = user
        self._chatMessages = messages
    }
    
}


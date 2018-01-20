//
//  Conversation.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/17/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation

class Conversation {
    private var _user: String!
    private var _image: String!
    private var _message: String!
    
    var user: String {
        return _user
    }
    var image: String {
        return _image
    }
    var message: String {
        return _message
    }
    
    init(user: String, avatar: String, message: String){
        self._user = user
        self._image = avatar
        self._message = message
    }
}


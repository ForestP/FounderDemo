//
//  User.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation

class User {

    private var _name: String!
    private var _avatarString: String!
    private var _title: String!
    private var _groups: String!
    private var _interests: String!
    private var _messages: [Message]?
    
    var name: String {
        return _name
    }
    var avatarString: String {
        return _avatarString
    }
    var title: String {
        return _title
    }
    var groups: String {
        return _groups
    }
    var interests: String {
        return _interests
    }
    var messages: [Message]?{
        return _messages
    }
    
    init(name: String, avatarString: String, title: String, groups: String, interests: String){
        self._name = name
        self._avatarString = avatarString
        self._title = title
        self._groups = groups
        self._interests = interests
    }

}

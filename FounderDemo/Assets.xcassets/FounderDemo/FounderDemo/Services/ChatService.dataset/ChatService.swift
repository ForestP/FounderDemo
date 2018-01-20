//
//  ChatService.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation

class ChatService {
    private static let _instance = ChatService()
    
    static var instance: ChatService {
        return _instance
    }

    // Setup Function
    func setupDemo() -> [Conversation] {
        let conversations = generateAllConversations()
        return conversations
    }
    
    func generateAllConversations() -> [Conversation] {
        let convo1 = Conversation(user: "Willard Vanlandingham", avatar: "willardAvatar", message: "Hey! Just wanted to see if you had any free ti…")
        let convo2 = Conversation(user: "Solar Energy", avatar: "groupAvatar", message: "I figured out a better way to charge your phone...")
        let convo3 = Conversation(user: "Ellen Underwood", avatar: "ellenAvatar", message: "It wont be a bigger problem to find within")
        let convo4 = Conversation(user: "UX Design", avatar: "groupAvatar", message: "Does anyone keep getting a big when they try")
        return [convo1,convo2,convo3,convo4]
    }
    
}

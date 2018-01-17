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
    func setupDemo() -> (User, [User], [Chat]) {
        let mainUser = generateMainUser()
        let allUsers = generateAllUsers()
        var allChats = [Chat]()
        for user in allUsers {
            allChats.append(generateChats(user: user))
        }
        return (mainUser, allUsers, allChats)
    }
    
    // Generate Current User of Demo
    func generateMainUser() -> User {
        let Forest = User(name: "Forest Plasencia", avatarString: "ForestAvatar", title: "Developer", groups: "OU IT", interests: "Technology")
        return Forest
    }
    
    // Generate all other users
    func generateAllUsers() -> [User] {
        let user1 = User(name: "John Carson", avatarString: "ForestAvatar", title: "Designer", groups: "OU IT", interests: "Technology")
        let user2 = User(name: "Max Steitle", avatarString: "ForestAvatar", title: "Developer", groups: "OU IT", interests: "Technology")
        let user3 = User(name: "Ewart Pohler", avatarString: "ForestAvatar", title: "Developer", groups: "OU IT", interests: "Technology")
        
        var allUsers = [John,Max,Ewart]
        
        return allUsers
    }
    
    // Generate Chats for all users
    func generateChats(user: User) -> Chat {
        let chatMessages = generateMessages()
        return Chat(user: user, messages: chatMessages)
    }
    
    // Generate messages for all chats
    func generateMessages() -> [Message]{
        return [Message(message: "hey"), Message(message: "hey")]
    }
}

//
//  messagesVC.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class messagesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cs = ChatService.instance
    
    var mainUser: User!
    var allUsers: [User]!
    var allChats: [Chat]!
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view steup
        tableView.register(conversationCell.self)
        tableView.delegate = self
        tableView.dataSource = self
        
        // demo data setup
        let data = cs.setupDemo()
        self.mainUser = data.0
        self.allUsers = data.1
        self.allChats = data.2

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    
    @IBAction func newMsgBtnPressed(_ sender: Any) {
    }
    

}


extension messagesVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var numRows = 3
        
        return numRows
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.rowHeight = UITableViewAutomaticDimension
        
        let chat = self.allChats[indexPath.row]
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as conversationCell
        cell.configureCell(chat: chat)
            
        return cell
        
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}



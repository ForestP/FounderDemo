//
//  messageDetailVC.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/19/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class messageDetailVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var memberLbl: UILabel!
    
    var numRows: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view steup
        tableView.register(pollMsgCell.self)
        tableView.register(selfMsgCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension messageDetailVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let numRows = 2
        
        return numRows
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.estimatedRowHeight = 400.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as selfMsgCell
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as pollMsgCell
            return cell
        } 
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
}

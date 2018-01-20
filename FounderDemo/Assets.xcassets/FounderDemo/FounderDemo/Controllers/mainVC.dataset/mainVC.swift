//
//  ViewController.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import UIKit

class mainVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Table view steup
        tableView.register(cell0.self)
        tableView.register(cell1.self)
        tableView.register(cell2.self)
        tableView.register(cell3.self)
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension mainVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numRows = 4
        return numRows
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.estimatedRowHeight = 400.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as cell0
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as cell1
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as cell2
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as cell3
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

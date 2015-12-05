//
//  SampleTableViewController.swift
//  AutoSizingCells
//
//  Created by Ankit Aggarwal on 05/12/15.
//  Copyright © 2015 Ankit. All rights reserved.
//

import UIKit

class SampleTableViewController: UITableViewController {

    var dataSource = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.dataSource.append("Hello")
        self.dataSource.append("Hello how are yollo how are yollo how are yollo how are yollo how are you.......")
        self.dataSource.append("Hello how aHello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......re you.......")
        self.dataSource.append("Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......")
        self.dataSource.append("Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......")
        self.dataSource.append("Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Helo how are you.......")
        self.dataSource.append("Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello ow are you.......")
        self.dataSource.append("Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello how are you.......Hello ho.")
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! SampleTableViewCell

        cell.mainLabel.text = self.dataSource[indexPath.row]
        
        return cell
    }

}

//
//  mainScreen.swift
//  Displaced
//
//  Created by Sahas D on 5/18/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit

protocol gameDelegate {
    func addStory(myData dataobject: AnyObject)
}

class mainScreen: UITableViewController, gameDelegate {
    
    func addStory(myData dataobject: AnyObject) {
        print ("called the segue")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }





}

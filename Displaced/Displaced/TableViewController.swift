//
//  TableViewController.swift
//  Displaced
//
//  Created by Sahas D on 5/19/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit
var counter = 0

var sayings = ["Hello...Is anybody there...HELLO?",
               "Finally. I was beginning to think they were wrong.",
               "I don’t need much. I’m alone. All I want is someone to talk to. Please stay. Don’t leave.",
               "I’m in Sudan. Sorry I’m so worried. My family is all dead or missing. My name is Kamal Aga. I’m eleven years old. I’m scared.",
               "I just crossed all of Sudan. My friend ------------",
               "My friend. He just collapsed. What should I do?",
               "Ok, give me some time, I'll let you know how it goes"]

var answers1 = ["I’m here.",
                "Help with what?",
                "Ok, where are you?",
                "What happened?",
                "Get some help.",
                "Ok."
]

var answers2 = ["Who are you?",
                "I can help.",
                "I’m not going to. Don’t worry. Why are you so preoccupied?",
                "Why?",
                "Leave him behind, he can't be saved.",
                "See you soon."]


//protocol gameDelegate {
    
//}

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        self.tableView.registerNib(UINib(nibName: "refugeeCell", bundle: nil), forCellReuseIdentifier: "refCell")
        let cell = tableView.dequeueReusableCellWithIdentifier("refCell", forIndexPath: indexPath) as! refugeeCell
        return cell
    }
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        self.tableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if let mycell = cell as? refugeeCell {
            mycell.speech?.text = "hasdfasdf"
            mycell.option1?.setTitle("hello", forState: .Normal)
            mycell.option1?.setTitle("world", forState: .Normal)
        }
    }







}

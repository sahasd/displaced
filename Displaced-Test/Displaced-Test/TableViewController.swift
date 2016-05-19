//
//  TableViewController.swift
//  Displaced-Test
//
//  Created by Sahas D on 5/19/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit

var counter = 1

var sayings = ["Hello...Is anybody there...HELLO?",
               "Finally. I was beginning to think they were wrong.",
               "They said I could talk to people, and they’d talk back. They said that there were people who could help",
               "I don’t need much. I’m alone. All I want is someone to talk to. Please stay. Don’t leave.",
               "I’m in Sudan. Sorry I’m so worried. My family is all dead or missing. My name is Kamal Aga. I’m eleven years old. I’m scared.",
               "I just crossed all of Sudan. My fri......",
               "My friend. He just collapsed. What should I do?",
               "Ok, give me some time, I'll let you know how it goes"]

var answers1 = ["I’m here.",
                "Wrong about what?",
                "Help with what?",
                "Ok, where are you?",
                "What happened, are you okay?",
                "Your friend...?",
                "Get some help.",
                "Ok."
]

var answers2 = ["Who are you?",
                "Who?",
                "I can help.",
                "Don’t worry. Why are you afraid?",
                "Whats going on?",
                "Did Something happen?",
                "Leave him, he's dead.",
                "See you soon."]


protocol myDelegate {
    func reload(myData dataobject: AnyObject)

}


class TableViewController: UITableViewController, myDelegate {
    func reload(myData dataobject: AnyObject) {
        self.tableView.reloadData()
        if counter <= 9 {
            let indexPath = NSIndexPath(forRow: counter-1, inSection: 0)
            self.tableView.scrollToRowAtIndexPath(indexPath,
                                                  atScrollPosition: UITableViewScrollPosition.Middle, animated: true)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00)

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if counter < 9 {
            return counter
        }
        return 9
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }


    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 300;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        self.tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "refCell")
        let cell = tableView.dequeueReusableCellWithIdentifier("refCell", forIndexPath: indexPath) as! TableViewCell
        print(indexPath.row)
        if indexPath.row < 8
        {
            
            self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None;
            
            cell.contentView.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00)
            
            cell.speech?.text = sayings[indexPath.row]
            cell.speech.textColor = UIColor.whiteColor()
           
            cell.answer1.setTitle(answers1[indexPath.row], forState: .Normal)
            cell.answer1.setTitleColor(UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00), forState: UIControlState.Normal)
            
            cell.answer2.setTitle(answers2[indexPath.row], forState: .Normal)
            cell.answer2.setTitleColor(UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00), forState: UIControlState.Normal)
            
            cell.answer1.backgroundColor = UIColor(red:0.98, green:0.98, blue:0.91, alpha:1.00)
            cell.answer2.backgroundColor = UIColor(red:0.98, green:0.98, blue:0.91, alpha:1.00)
            
            cell.answer1.layer.cornerRadius = 6
            cell.answer2.layer.cornerRadius = 6
            cell.delegate = self


        }
        if indexPath.row == 8 {
            self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None;
            
            cell.contentView.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00)
            
            cell.speech?.text = "Kamal seems to be busy, check again later"
            cell.speech.textColor = UIColor(red:0.87, green:0.87, blue:0.87, alpha:1.00)
            cell.speech?.textAlignment = .Center;
            cell.answer1.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00)
            cell.answer2.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.08, alpha:1.00)
            cell.speech?.font = cell.speech?.font.fontWithSize(11)

          
            
        }
        return cell
    }


    

    
    


}

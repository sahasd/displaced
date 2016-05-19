//
//  refugeeCell.swift
//  Displaced
//
//  Created by Sahas D on 5/18/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit

var counter = 0

class refugeeCell: UITableViewCell {
    
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
    
    @IBOutlet weak var speech: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonClicked(sender: AnyObject) {
        
    }
}

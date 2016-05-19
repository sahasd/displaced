//
//  TableViewCell.swift
//  Displaced-Test
//
//  Created by Sahas D on 5/19/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var speech: UILabel!
    @IBOutlet weak var answer1: SpringButton!
    @IBOutlet weak var answer2: SpringButton!
    var delegate:myDelegate!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func tapped(sender: AnyObject) {
        counter += 1
        let mydata : AnyObject = "Kust to be safe"
        self.delegate.reload(myData: mydata)
       
    }
    
}

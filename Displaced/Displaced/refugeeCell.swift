//
//  refugeeCell.swift
//  Displaced
//
//  Created by Sahas D on 5/18/16.
//  Copyright © 2016 Sahas D. All rights reserved.
//

import UIKit


class refugeeCell: UITableViewCell {
    

    @IBOutlet weak var speech: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    //var delegate:gameDelegate!
    
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

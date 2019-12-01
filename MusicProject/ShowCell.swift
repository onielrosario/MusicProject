//
//  ShowCell.swift
//  MusicProject
//
//  Created by Oniel Rosario on 11/19/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ShowCell: UITableViewCell {

    @IBOutlet weak var singImage: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songArtist: UILabel!
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  PlanetaTableViewCell.swift
//  Planetas
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class PlanetaTableViewCell: UITableViewCell {

    @IBOutlet var name:UILabel!
    @IBOutlet var gravity:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

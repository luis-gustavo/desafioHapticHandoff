//
//  HapticTableViewCell.swift
//  desafioHapticHandoff
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 13/09/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit

class HapticTableViewCell: UITableViewCell {

    @IBOutlet weak var hapticName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  InfoCell.swift
//  UITableViewInsideUITableViewCell
//
//  Created by Shantaram K on 02/10/20.
//  Copyright © 2020 Shantaram Kokate. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  CardTableViewCell.swift
//  Empower
//
//  Created by Nandini  on 8/2/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
//
//  ViewControllerTableViewCell.swift
//  TableViewApp
//
//  Created by DSV on 2018-04-17.
//  Copyright © 2018 DSV. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionImage: UIImageView!
    @IBOutlet weak var CollectionName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

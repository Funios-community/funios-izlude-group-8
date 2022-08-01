//
//  LogoutTableViewCell.swift
//  Introduction2
//
//  Created by Andira Yunita on 01/08/22.
//

import UIKit

class LogoutTableViewCell: UITableViewCell {
    @IBOutlet weak var logoutLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

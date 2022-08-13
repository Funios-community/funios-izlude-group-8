//
//  TableViewCell.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let nibName = "TableViewCell"

    @IBOutlet weak var titleContent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

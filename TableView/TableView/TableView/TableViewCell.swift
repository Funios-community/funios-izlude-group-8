//
//  TableViewCell.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import UIKit

protocol TableViewProtocol: AnyObject {
    func showAlert(title: String)
}

class TableViewCell: UITableViewCell {
    static let nibName = "TableViewCell"

    @IBOutlet weak var titleContent: UILabel!

    weak var delegate: TableViewProtocol?
    
    @IBAction func alertTapped(_ sender: UIButton) {
        delegate?.showAlert(title: titleContent.text ?? "")
 
    }
    
    
    deinit {
        print(String(describing: self))
    }
}

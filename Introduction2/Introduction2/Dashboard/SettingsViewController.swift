//
//  SettingsViewController.swift
//  Introduction2
//
//  Created by Andira Yunita on 01/08/22.
//

import UIKit

enum SettingsStructure {
    case profile
    case share
    case logout
}

struct ListSettings {
    let name: String
    let icon: UIImage
}

class SettingsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
        
    let listSettings: [ListSettings] = [
        ListSettings(name: "Profile", icon: UIImage(systemName: "person.fill") ?? UIImage()),
        ListSettings(name: "Share", icon: UIImage(systemName: "square.and.arrow.up") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: SettingsTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SettingsTableViewCell.self))
        tableView.register(UINib(nibName: String(describing: LogoutTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: LogoutTableViewCell.self))
    }
    
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingsTableViewCell.self), for: indexPath) as! SettingsTableViewCell
            cell.nameLabel.text = listSettings[indexPath.row].name
            cell.iconImage.image = listSettings[indexPath.row].icon
            return cell
        }
        let cell: LogoutTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: LogoutTableViewCell.self)) as! LogoutTableViewCell
        cell.logoutLabel.text = "Logout"
        cell.iconImage.image = UIImage(systemName: "rectangle.portrait.and.arrow.right")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listSettings.count
        }
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
}

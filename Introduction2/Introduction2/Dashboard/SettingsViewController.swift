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
    
    var structure: [SettingsStructure] = [.profile, .share, .logout]
    
    let listSettings: [ListSettings] = [
        ListSettings(name: "Profile", icon: UIImage(systemName: "person.fill") ?? UIImage()),
        ListSettings(name: "Share", icon: UIImage(systemName: "square.and.arrow.up") ?? UIImage())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: String(describing: SettingsTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SettingsTableViewCell.self))
        tableView.register(UINib(nibName: String(describing: LogoutTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: LogoutTableViewCell.self))
    }
    
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch structure[indexPath.section] {
        case .profile, .share:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingsTableViewCell.self), for: indexPath) as! SettingsTableViewCell
            cell.nameLabel.text = listSettings[indexPath.row].name
            cell.iconImage.image = UIImage(systemName: "\(listSettings[indexPath.row].icon)")
            return cell
            
        case .logout:
            let cell: LogoutTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: LogoutTableViewCell.self)) as! LogoutTableViewCell
            cell.logoutLabel.text = "Logout"
            cell.iconImage.image = UIImage(systemName: "rectangle.potrait.and.arrow.right")
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch structure[section] {
//        case .profile:
//            return 1
//        case .share:
//            return 1
//        case .logout:
//            return 1
//        }
        return 2
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }
}

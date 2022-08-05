//
//  HomeViewController.swift
//  Introduction
//
//  Created by Tommy-amarbank on 26/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        tableView.register(UINib(nibName: String(describing: HomeTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HomeTableViewCell.self))
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeTableViewCell.self), for: indexPath) as! HomeTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        popupView(at: indexPath.row)
    }
    
}

extension HomeViewController {
    enum StatusActionType: String {
        case noAction = "noAction"
        case singleMainAction = "singleMainAction"
        case singleSecondaryAction = "singleSecondaryAction"
        case dualAction = "dualAction"
    }
}

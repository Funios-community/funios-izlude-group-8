//
//  HomeViewController.swift
//  Introduction2
//
//  Created by Tommy-amarbank on 23/07/22.
//

import UIKit

class HomeViewController: UIViewController {
   

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: String(describing: CardViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CardViewCell.self))

    }
}

extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CardViewCell.self), for: indexPath) as! CardViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}

//page settings -> list ->
// 
//profile, share logout,
//page otp -> bebas designnya

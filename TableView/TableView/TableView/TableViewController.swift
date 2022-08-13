//
//  TableViewController.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var data: [FieldDataModel] = []
    let loading = UIActivityIndicatorView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loading)
        loading.startAnimating()
        loading.changeConstraint(constant: 0, caller: self)
        
        NetworkHelper.call {[weak self] data in
            guard let self = self else { return }
            self.data = data?.data ?? []
            self.tableView.reloadData()
            self.loading.stopAnimating()
            self.loading.hidesWhenStopped = true

            
        }
        tableView.dataSource = self
        tableView.delegate = self
        
        //MARK: register cell
        let nib = UINib(nibName: TableViewCell.nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TableViewCell.nibName)

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.nibName, for: indexPath) as! TableViewCell
        cell.titleContent.text = data[indexPath.row].field
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(data[indexPath.row])

    }
    
}

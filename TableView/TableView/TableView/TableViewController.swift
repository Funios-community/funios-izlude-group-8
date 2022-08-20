//
//  TableViewController.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    var networkHelper: NetworkHelper? = NetworkHelper()
    var data: [BaseDataModel] = []
    var loading: UIActivityIndicatorView? = UIActivityIndicatorView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loading!)
        loading?.startAnimating()
        loading?.changeConstraint(constant: 0, caller: self)
        
        networkHelper?.call(urls: "https://dev-ruangkonstruksi-backend.herokuapp.com/actor/list", httpMethod: .post) {[weak self] data in
            guard let self = self else { return }
            self.data = data?.data ?? []
            self.tableView.reloadData()
            self.loading?.stopAnimating()
            self.loading?.hidesWhenStopped = true

            
        }
        tableView.dataSource = self
        tableView.delegate = self
        
        //MARK: register cell
        let nib = UINib(nibName: TableViewCell.nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TableViewCell.nibName)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        networkHelper = nil
        loading = nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.nibName, for: indexPath) as! TableViewCell
//        cell.caller = self
        cell.delegate = self
        cell.titleContent.text = data[indexPath.row].email
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(data[indexPath.row])

    }
    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    deinit {
        print("tableViewController release")
    }
}

extension TableViewController: TableViewProtocol {
    func showAlert(title: String) {
        let alert = UIAlertController(title: "Halo", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert, animated: true)
    }
    
    
}

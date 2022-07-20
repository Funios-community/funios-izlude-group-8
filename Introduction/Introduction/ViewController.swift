//
//  ViewController.swift
//  Introduction
//
//  Created by Tommy-amarbank on 18/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return myViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       showPopupAlertView(at: indexPath)
    }
}

extension ViewController {
    func myViewCell() -> UITableViewCell {
        let cell = UITableViewCell()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        view.backgroundColor = .blue
        cell.addSubview(view)
        return cell
    }
    
    func showPopupAlertView(at index: IndexPath){
        let message = "ini di index ke - \(index.row)"
        let alert = UIAlertController(title: "Halo", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        self.present(alert, animated: true)
    }
}


































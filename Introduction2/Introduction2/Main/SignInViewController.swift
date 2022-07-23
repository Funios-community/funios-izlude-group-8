//
//  ViewController.swift
//  Introduction2
//
//  Created by Tommy-amarbank on 22/07/22.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        let vc: UIViewController = sb.instantiateViewController(withIdentifier: "Tab")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        emailTextField.resignFirstResponder()
    }
    
}


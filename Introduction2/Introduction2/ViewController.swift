//
//  ViewController.swift
//  Introduction2
//
//  Created by Tommy-amarbank on 22/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInTapped(_ sender: Any) {
        print("signIn email: \(emailTextField.text)")
        emailTextField.resignFirstResponder()
    }
    
}


//
//  SignUpViewController.swift
//  Introduction2
//
//  Created by Andira Yunita on 23/07/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameTextField.becomeFirstResponder()
        passwordTextField.isSecureTextEntry = true
        confirmPasswordTextField.isSecureTextEntry = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let TF = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            TF.becomeFirstResponder()
            return false
        }
        return true
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        print("User \(String(describing: fullNameTextField.text!)) register with email \(String(describing: emailTextField.text!))")
//            fullNameTextField.resignFirstResponder()
    }
}

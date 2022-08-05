//
//  SignInViewController.swift
//  Introduction
//
//  Created by Tommy-amarbank on 26/07/22.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInTapped(_ sender: Any) {
        print("signInTapped")
        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        print("signup")
        
        let signupVC = SignupViewController()
        present(signupVC, animated: true)
        
    }
    
}

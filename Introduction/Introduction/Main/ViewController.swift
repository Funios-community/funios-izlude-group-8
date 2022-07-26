//
//  ViewController.swift
//  Introduction
//
//  Created by Tommy-amarbank on 18/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.signInPage()
        }
        // Do any additional setup after loading the view.
    }
    
    func signInPage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }


}

// login
// register
// dashboard
// 2 tab -> settings, home


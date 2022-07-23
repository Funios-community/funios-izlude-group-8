//
//  ViewController.swift
//  Bebas
//
//  Created by Tommy-amarbank on 23/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            let vc = SignInViewController()
            vc.modalPresentationStyle = .overFullScreen
            self?.present(vc, animated: false)
        }
    }
}


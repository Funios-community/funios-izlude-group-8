//
//  UIViewController+Extension.swift
//  Introduction
//
//  Created by Tommy-amarbank on 05/08/22.
//

import UIKit

extension UIViewController {
    
    func popupView(at row: Int) {
        let popup = UIAlertController(title: "Halo", message: "ini index ke -\(row)", preferredStyle: .alert)
        popup.addAction(UIAlertAction(title: "ok", style: .default))
        present(popup, animated: true)
    }
}

//
//  ViewController.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//
import UIKit

class A {
    weak var bb: B?
    
    deinit {
        print(String(describing: self))
    }
   
}

class B {
    var aa: A?
    
    deinit {
        print(String(describing: self))
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a: A? = A()
        var b: B? = B()
        a?.bb = b
        b?.aa = a
        
//        a?.bb = nil
        a = nil
        b = nil
       
//        self.addChild(vc)
//        self.view.addSubview(vc.view)
//
//        vc.view.changeConstraint(constant: 0,caller: self)
 
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("gdf")
//        let vc = CollectionViewController()
//        present(vc, animated: true)
    }

    @IBAction func nextPage(_ sender: Any) {
        let vc = CollectionViewController()
        self.present(vc, animated: true)
    }
    
}

extension UIView {
    func changeConstraint(constant: CGFloat, caller: UIViewController) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: caller.view.topAnchor, constant: constant).isActive = true
        self.bottomAnchor.constraint(equalTo: caller.view.bottomAnchor, constant: -constant).isActive = true
        self.leadingAnchor.constraint(equalTo: caller.view.leadingAnchor, constant: constant).isActive = true
        self.trailingAnchor.constraint(equalTo: caller.view.trailingAnchor, constant: -constant).isActive = true
    }
}

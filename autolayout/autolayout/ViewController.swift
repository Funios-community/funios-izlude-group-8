
//
//  ViewController.swift
//  autolayout
//
//  Created by Tommy-amarbank on 30/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    var number = 0
    
    func test(parameter: Int) {
      var pertama = 10
      print(pertama)
    }

  
      
    func hore(){
      print("gdsg")
    }
    @IBAction func buttonTapped(_ sender: Any) {
        number = number + 1
        numberLabel.text = "\(number)"
        print(number)
    }
    
    @IBAction func kurang(_ sender: Any) {
        
        number = number - 1
        numberLabel.text = "\(number)"
        print(number)
        var pertama = 5
         pertama = pertama + 1
         pertama = pertama + 10
       print(pertama)
        test(parameter: 69)

    }
}


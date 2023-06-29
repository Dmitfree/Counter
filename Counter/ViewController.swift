//
//  ViewController.swift
//  Counter
//
//  Created by Dmitfre on 29.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var countResultLabel: UILabel!
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    

}


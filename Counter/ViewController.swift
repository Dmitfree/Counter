//
//  ViewController.swift
//  Counter
//
//  Created by Dmitfre on 29.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logWindow: UITextView!
    
    @IBOutlet weak var clearResultButton: UIButton!
    
    @IBOutlet weak var increaseCountButton: UIButton!
    @IBOutlet weak var decreaseCountButton: UIButton!
    
    @IBOutlet weak var countButton: UIButton!
    
    @IBOutlet weak var countResultLabel: UILabel!
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decreaseCountButton.tintColor = .red
        
        logWindow.text = "История изменений:"
    }
    @IBAction func buttonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    
    @IBAction func decreaseButtonDidLoad(_ sender: Any) {
        if result == 0 {
            countResultLabel.text = "Значение счетчика: 0"
        } else {
            result -= 1
            countResultLabel.text = "Значение счетчика: \(result)"
        }
    }
    
    @IBAction func increaseButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    
    @IBAction func clearButtonDidLoad(_ sender: Any) {
        result = 0
        countResultLabel.text = "0"
    }
}


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
    
    let dateFormatter = DateFormatter()
  //  dateFormatter.dateStyle = .short
  //  dateFormatter.timeStyle = .short
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decreaseCountButton.tintColor = .red
        
        logWindow.text = "История изменений:\n"
    }
    @IBAction func buttonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    
    @IBAction func decreaseButtonDidLoad(_ sender: Any) {
        if result == 0 {
            countResultLabel.text = "Значение счетчика: 0"
            logWindow.text.append("Попытка уменьшить значение счётчика ниже 0\n")
        } else {
            result -= 1
            countResultLabel.text = "Значение счетчика: \(result)"
            logWindow.text.append("Значение уменьшено на -1\n")
        }
    }
    
    @IBAction func increaseButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
        logWindow.text.append("Значение увеличено на +1\n")
    }
    
    @IBAction func clearButtonDidLoad(_ sender: Any) {
        result = 0
        countResultLabel.text = "0"
        logWindow.text.append("Значение сброшено\n")
    }
}


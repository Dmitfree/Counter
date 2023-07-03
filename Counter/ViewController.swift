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
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var TapButton: UIButton!
    
    @IBOutlet weak var countResultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minusButton.tintColor = .red
        
        logWindow.text = "История изменений:\n"
    
    }
    
    @IBAction func TapButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    
    @IBAction func minusButtonDidLoad(_ sender: Any) {
        if result == 0 {
            countResultLabel.text = "Значение счетчика: 0"
            logWindow.text.append("\(Date()) Попытка уменьшить значение счётчика ниже 0\n")
        } else {
            result -= 1
            countResultLabel.text = "Значение счетчика: \(result)"
            logWindow.text.append("\(Date()) Значение уменьшено на -1\n")
        }
    }
    
    @IBAction func plusButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
        logWindow.text.append("\(Date()) Значение увеличено на +1\n")
    }
    
    @IBAction func clearButtonDidLoad(_ sender: Any) {
        result = 0
        countResultLabel.text = "0"
        logWindow.text.append("\(Date()) Значение сброшено\n")
    }
}

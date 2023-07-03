//
//  ViewController.swift
//  Counter
//
//  Created by Dmitfre on 29.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var logWindow: UITextView!
    
    @IBOutlet weak private var clearResultButton: UIButton!
    
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var minusButton: UIButton!
    
    @IBOutlet weak private var tapButton: UIButton!
    
    @IBOutlet weak private var countResultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minusButton.tintColor = .red
        logWindow.text = "История изменений:\n"
    }
    
    @IBAction private func tapButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
    }
    
    @IBAction private func minusButtonDidLoad(_ sender: Any) {
        if result == 0 {
            countResultLabel.text = "Значение счетчика: 0"
            logWindow.text.append("\(Date()) Попытка уменьшить значение счётчика ниже 0\n")
        } else {
            result -= 1
            countResultLabel.text = "Значение счетчика: \(result)"
            logWindow.text.append("\(Date()) Значение уменьшено на -1\n")
        }
    }
    
    @IBAction private func plusButtonDidLoad(_ sender: Any) {
        result += 1
        countResultLabel.text = "Значение счетчика: \(result)"
        logWindow.text.append("\(Date()) Значение увеличено на +1\n")
    }
    
    @IBAction private func clearButtonDidLoad(_ sender: Any) {
        result = 0
        countResultLabel.text = "0"
        logWindow.text.append("\(Date()) Значение сброшено\n")
    }
}

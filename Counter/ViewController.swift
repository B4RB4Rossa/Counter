//
//  ViewController.swift
//  Counter
//
//  Created by Macintosh on 21.01.2025.
//

import UIKit

class ViewController: UIViewController {

    var countText = "0"
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var countButtonPlus: UIButton!
    
    @IBOutlet weak var countButtonMinus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "Значение счетчика: \(countText)"
    }

    @IBAction func countButtonPlusDidTap(_ sender: Any) {
        if let currentCount = Int(countText) {
            countText = "\(currentCount + 1)"
            countLabel.text = "Значение счетчика: \(countText)"
        }
    }
    
    @IBAction func countButtonMinusDidTap(_ sender: Any) {
        if let currentCount = Int(countText) {
            countText = "\(currentCount - 1)"
            countLabel.text = "Значение счетчика: \(countText)"
        }
    }
}


//
//  FourTestViewController.swift
//  UITestCollection
//
//  Created by yauheni prakapenka on 10/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class FourTestViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "Никола Тесла", message: "Изобрел электродвигатель, генератор, многофазные системы, работающие на переменном токе.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Отменить", style: .default, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Спасибо", style: .default, handler: { action in
            self.resultLabel.text = "Тест 4 выполнен успешно"
            self.resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }))
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
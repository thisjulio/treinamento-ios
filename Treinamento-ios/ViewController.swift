//
//  ViewController.swift
//  Treinamento-ios
//
//  Created by Julio Cesar da Silva Pereira on 22/05/2020.
//  Copyright © 2020 Julio Cesar da Silva Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var numeroDeClicks: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateLabel()
    }
    
    func updateLabel() {
        label.text = "Você cliclou \(self.numeroDeClicks) vezes"
    }
    
    @IBAction func decrementar(_ sender: UIButton) {
        self.numeroDeClicks -= 1
        self.updateLabel()
    }
    
    @IBAction func incrementar(_ sender: UIButton) {
        self.numeroDeClicks += 1
        self.updateLabel()
    }
}


//extension Optional<T>: Nil {
//    func value<T>(_ value: T) -> T {
//        guard let _ = self else {
//            return value
//        }
//
//        return self
//    }
//}

//
//  ViewController.swift
//  iQuiz
//
//  Created by Luiz Henrique Silva Sampaio on 28/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButtonPressed(_ sender: Any) {
        print("Button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        startButton.layer.cornerRadius = 32.0
    }
}


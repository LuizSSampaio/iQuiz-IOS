//
//  PerformaceViewController.swift
//  iQuiz
//
//  Created by Luiz Henrique Silva Sampaio on 28/07/23.
//

import UIKit

class PerformaceViewController: UIViewController {
    var score: Int?
    
    @IBOutlet weak var numberOfCorrectAnswersLabel: UILabel!
    @IBOutlet weak var percentOfCorrectAnswersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configurePerformace()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
    }

    func configurePerformace() {
        guard let score = score else {
            return
        }
        
        numberOfCorrectAnswersLabel.text = "You got \(score) out of \(questions.count) questions right"
        
        let percent = score * 100 / questions.count
        percentOfCorrectAnswersLabel.text = "Final percentage: \(percent)%"
    }

}

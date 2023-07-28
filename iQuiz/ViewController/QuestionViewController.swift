//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Luiz Henrique Silva Sampaio on 28/07/23.
//

import UIKit

class QuestionViewController: UIViewController {
    var score = 0
    var questionNumber = 0

    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var responseButtons: [UIButton]!
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        if sender.tag == questions[questionNumber].correctAnswer {
            sender.tintColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
            score += 1
        } else {
            sender.tintColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if questionNumber + 1 < questions.count {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            performSegue(withIdentifier: "goToPerformaceScreen", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performaceVC = segue.destination as?  PerformaceViewController else {
            return
        }
        performaceVC.score = self.score
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
    }
    
    @objc func configureQuestion() {
        questionTitleLabel.text = questions[questionNumber].title
        
        for button in responseButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.tintColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }

}

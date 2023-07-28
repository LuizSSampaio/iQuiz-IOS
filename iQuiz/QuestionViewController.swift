//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Luiz Henrique Silva Sampaio on 28/07/23.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionTitleLabel: UILabel!
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

}

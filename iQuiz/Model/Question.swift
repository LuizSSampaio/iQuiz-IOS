//
//  Question.swift
//  iQuiz
//
//  Created by Luiz Henrique Silva Sampaio on 28/07/23.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions = [
    Question(
        title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        correctAnswer: 2
    ),
    Question(
        title: "Em que ano Vingadores Ultimato foi lançado?",
        answers: ["2019", "2018", "2017"],
        correctAnswer: 0
    ),
    Question(
        title: "Em que ano Avatar 2 foi lançado?",
        answers: ["2014", "2022", "2023"],
        correctAnswer: 1
    )
]

//
//  QuizHub.swift
//  quiz
//
//  Created by Swamita on 19/08/20.
//  Copyright © 2020 Swamita Gupta. All rights reserved.
//

import Foundation

import Foundation

struct QuizBrain {
    
    let quiz = [Questions(question: "One", options: ["True", "False"], answer: "True"), Questions(question: "Two", options: ["True", "False"], answer: "True"),
    Questions(question: "Three", options: ["True", "False"], answer: "False")]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score = score + 1
            return true
        }
        else{
            return false
        }
    }
    
    func updateScore() -> Int {
        return score
    }
    
    func getQuestion() -> String{
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float{
        return Float(questionNumber+1)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
}

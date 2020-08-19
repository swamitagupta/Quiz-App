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
    
    let HarryPotterQuiz = [
        Questions(question: "How does Harry manage to breathe underwater during the second task of the Triwizard Tournament?", options: ["He transfigures into a shark","He kisses a mermaid","He eats gillyweed","He performs a bubble-head charm"], answer: "He eats gillyweed"),
    Questions(question: "What is the name of Fred and George’s joke shop?", options: ["Weasley Joke Emporium","Weasleys’ Wizard Wheezes","Fred & George’s Wonder Emporium","Zonko’s Joke Shop"], answer: "Weasleys’ Wizard Wheezes"),
    Questions(question: "Which of these is NOT one of the Unforgivable Curses?", options: ["Cruciatus Curse","Imperius Curse","Sectumsempra","Avada Kedavra"], answer: "Sectumsempra"),
    Questions(question: "Who played Lord Voldemort in the movies?", options: ["Jeremy Irons","Tom Hiddleston","Gary Oldman","Ralph Fiennes"], answer: "Ralph Fiennes"),
    Questions(question: "Who guards the entrance to the Gryffindor common room?", options: ["The Grey Lady","The Fat Friar","The Bloody Baron","The Fat Lady"], answer: "The Fat Lady")]
    
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

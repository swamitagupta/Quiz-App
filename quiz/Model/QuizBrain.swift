//
//  quizBrain.swift
//  quiz
//
//  Created by Swamita on 19/08/20.
//  Copyright © 2020 Swamita Gupta. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [Questions(question: "One", options: ["True", "False"], answer: "True"), Questions(question: "Two", options: ["True", "False"], answer: "True"),
    Questions(question: "Three", options: ["True", "False"], answer: "False")]
    
    var questionNumber = 0
}

//
//  ViewController.swift
//  quiz
//
//  Created by Swamita on 25/07/20.
//  Copyright © 2020 Swamita Gupta. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [Questions(question: "One", options: ["True", "False"], answer: "True"), Questions(question: "Two", options: ["True", "False"], answer: "True"),
    Questions(question: "Three", options: ["True", "False"], answer: "False")]
    
    var questionNumber = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerPressed(_ sender: Any) {
        let userAnswer = (sender as AnyObject).currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            score = score + 1
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        }
        updateUI()
        
    }
    
    func updateUI() {
        questionText.text = quiz[questionNumber].question
    }
    
}


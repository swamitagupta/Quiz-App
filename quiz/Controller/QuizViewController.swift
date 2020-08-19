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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let correct = quizBrain.checkAnswer(sender.currentTitle!)
        
        if correct {
            
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionText.text = quizBrain.getQuestion() 
        trueButton.backgroundColor = UIColor.white
        falseButton.backgroundColor = UIColor.white
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.updateScore())/\(quizBrain.quiz.count)"
    }
    
}


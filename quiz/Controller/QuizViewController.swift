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
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    @IBOutlet weak var optionFour: UIButton!
    
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
        optionOne.setTitle( "\(quizBrain.getOptions()[0])" , for: .normal )
        optionTwo.setTitle( "\(quizBrain.getOptions()[1])" , for: .normal )
        optionThree.setTitle( "\(quizBrain.getOptions()[2])" , for: .normal )
        optionFour.setTitle( "\(quizBrain.getOptions()[3])" , for: .normal )
        
        optionOne.backgroundColor = UIColor.white
        optionTwo.backgroundColor = UIColor.white
        optionThree.backgroundColor = UIColor.white
        optionFour.backgroundColor = UIColor.white
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.updateScore())/\(quizBrain.quiz.count)"
    }
    
}


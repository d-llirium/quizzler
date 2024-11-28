//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
// responsable for telling the other components what to do
class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // MARK: - properties
    var quizBrain = QuizBrain()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True || False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green // feedback to the user
        } else {
            sender.backgroundColor = UIColor.red // feedback to the user
        }

        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false) // we don't need to put insde a variable if it runs only once, so we don`t need to invalidate it
    }
    
    // MARK: - functions
    @objc private func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        // clear the button collors
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
    }
}


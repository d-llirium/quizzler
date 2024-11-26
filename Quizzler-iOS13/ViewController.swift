//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // MARK: - properties
    let quiz = [
        ["4 + 2 = 6", "True"],
        ["(5 - 3) > 1", "True"],
        ["(3 + 8) < 10", "False"]
    ]
    var questionNumber = 0
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True || False
        let actualAnswer = quiz[questionNumber][1] // to get the answer
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNumber < (quiz.count-1) {
            questionNumber += 1
        } else {
            questionNumber = 0 // loop quiz
        }
        updateUI()
    }
    
    // MARK: - functions
    private func updateUI() {
        questionLabel.text = quiz[questionNumber][0] // to get the question
    }
}


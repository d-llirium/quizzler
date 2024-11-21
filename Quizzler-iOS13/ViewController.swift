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
        "4 + 2 = 6",
        "(5 - 3) > 1",
        "(3 + 8) < 10"
    ]
    var questionNumber = 0
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    // MARK: - functions
    private func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
}


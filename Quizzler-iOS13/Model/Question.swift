// Question.swift
// 
// Created for Quizzler-iOS13 in 2024
// Using Swift 6.0
//
//  Created by Patricia Carlos on 26/11/24
    

import Foundation

struct Question {
    let text : String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}

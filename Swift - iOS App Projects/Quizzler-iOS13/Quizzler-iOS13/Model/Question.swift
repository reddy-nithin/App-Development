//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nithin Reddy on 8/1/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], ca:String) {
        text = q
        answer = a
        correctAnswer = ca
    }
}


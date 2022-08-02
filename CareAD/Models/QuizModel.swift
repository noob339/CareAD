//
//  QuizModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/8/22.
//

import Foundation
import SwiftUI

struct Quiz
{
    var currentQuestion: Int
    var quizModel: quizModel
    var quizCompleted: Bool = false
    var score: Int
}

struct quizModel
{
    var question: String
    
    var answer: String
    var optionList: [quizOption]
}

struct quizOption: Identifiable
{
    var id: Int
    var questionValue: Int
    var optionId: String
    var option: String
    var color: Color
    var isSelected: Bool = false
    var isMatched: Bool = false
    
}

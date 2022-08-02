//
//  QuestionModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/8/22.
//

import Foundation
import SwiftUI


class QuestionModel
{
    
}

//do I even need an answer?

extension QuestionModel
{
    static var quizData: [quizModel]
    {
        [
            quizModel(question: "Bathing",
                      answer: "?",
                      optionList: [quizOption(id: 1, questionValue: 1, optionId: "A", option: "Bathes self completely or needs help in bathing only a single part of the body such as the back, genital area or disabled extremity.", color: Color.white),
                                   quizOption(id: 2, questionValue: 0, optionId: "B", option: "Need help withbathing more than one part of thebody, getting in or out of the tub orshower. Requires total bathing.", color: Color.white)]),
            
            quizModel(question: "Dressing",
                      answer: "?",
                      optionList: [quizOption(id: 11, questionValue: 1, optionId: "A", option: "Get clothes from closets and drawers and puts on clothes and outer garments complete with fasteners. May have help tying shoes.", color: Color.white),
                                   quizOption(id: 12, questionValue: 0, optionId: "B",  option: "Needs help with dressing self or needs to be completely dressed.", color: Color.white)]),
            
            quizModel(question: "Toileting",
                      answer: "?",
                      optionList: [quizOption(id: 21, questionValue: 1, optionId: "A", option: "Goes to toilet, gets on and off, arranges clothes, cleans genital area without help.", color: Color.white),
                                   quizOption(id: 22, questionValue: 0, optionId: "B", option: "Needs help transferring to the toilet, cleaning self or uses bedpan or commode.", color: Color.white)]),
            
            quizModel(question: "Transferring",
                      answer: "?",
                      optionList: [quizOption(id: 31, questionValue: 1, optionId: "A", option: "Moves in and out of bed or chair unassisted. Mechanical transfer aids are acceptable ", color: Color.white),
                                   quizOption(id: 32, questionValue: 0, optionId: "B", option: "Needs help in moving from bed to chair or requires a complete transfer.", color: Color.white)]),
            
            quizModel(question: "Continence",
                      answer: "?",
                      optionList: [quizOption(id: 41, questionValue: 1, optionId: "A", option: "Exercises complete self control over urination and defecation.", color: Color.white),
                                   quizOption(id: 42, questionValue: 0, optionId: "B", option: "Is partially or totally incontinent of bowel or bladder ", color: Color.white)]),
            
            quizModel(question: "Feeding",
                      answer: "?",
                      optionList: [quizOption(id: 51, questionValue: 1, optionId: "A", option: " Gets food from plate into mouth without help. Preparation of food may be done by another person.", color: Color.white),
                                   quizOption(id: 52, questionValue: 0, optionId: "B", option: "Needs partial or total help with feeding or requires parenteral feeding.", color: Color.white)])
        ]
    }
}




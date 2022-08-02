//
//  ADLModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/6/22.
//

import Foundation
import SwiftUI

struct ADLSurvey: Identifiable {
    let id: UUID
    var surveyType: String
    var score: Int
    var theme: Theme
    
    init(id: UUID = UUID(), surveyType: String, score: Int, theme: Theme) {
        self.id = id
        self.surveyType = surveyType
        self.score = score
        self.theme = theme
        
        
    }

}

extension ADLSurvey {
    struct Data {
        var surveyType: String = ""
        var score: Int = 0
        var theme: Theme = .purp
    }
    
    var data: Data {
        Data(surveyType: surveyType, score: score, theme: theme)
    }
    
    mutating func update(from data: Data) {
        surveyType = data.surveyType
        score = data.score
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        surveyType = data.surveyType
        score = data.score
        theme = data.theme
    }
}

extension ADLSurvey {
    static let sampleData: [ADLSurvey] =
    [
        ADLSurvey(surveyType: "IADL", score: 6, theme: .salmon),
        ADLSurvey(surveyType: "BADL", score: 4, theme: .purp),
        ADLSurvey(surveyType: "IADL", score: 3, theme: .salmon)
    ]
}

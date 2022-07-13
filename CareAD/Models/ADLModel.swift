//
//  ADLModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/6/22.
//

import Foundation

struct ADLSurvey {
    var surveyType: String
//    let score:Int
}

extension ADLSurvey {
    static let sampleData: [ADLSurvey] =
    [
        ADLSurvey(surveyType: "IADL"),
        ADLSurvey(surveyType: "BADL"),
        ADLSurvey(surveyType: "IADL")
    ]
}

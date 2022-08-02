//
//  VitalsModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/15/22.
//

import Foundation
import SwiftUI

//    var date = Date() this is


struct Vitals: Identifiable {
    let id: UUID
    var pulse: Int
    var glucose: Int
    var bloodpS: Int //blood pressure systollic
    var bloodpD: Int //dystollic
    var weight: Double
    var temp: Double
    var theme: Theme
    
    init(id: UUID = UUID(), pulse: Int, glucose: Int, bloodpS: Int, bloodpD: Int, weight: Double, temp: Double, theme: Theme ) {
        
        self.id = id
        self.pulse = pulse
        self.glucose = glucose
        self.bloodpS = bloodpS
        self.bloodpD = bloodpD
        self.weight = weight
        self.temp = temp
        self.theme = theme
    }
    
    //for now hard code the wright and temp for LBS and F but you can definately make a function to show it C or KG and use a toggle button in the settings for this, oh wow and this is how settings becomes complex in a way with many more views to display all the different levels of customizations and preferences.
    
    //Maybe the user decides which order the vitals display in as well
}

extension Vitals {
    
    struct Data {
        var pulse: Int = 0
        var glucose: Int = 0
        var bloodpS: Int = 0 //blood pressure systollic
        var bloodpD: Int = 0//dystollic
        var weight: Double = 0.0
        var temp: Double = 0.0
        var theme: Theme = .salmon
    }
    
    var data: Data {
        Data(pulse: pulse, glucose: glucose, bloodpS: bloodpS, bloodpD: bloodpD, weight: weight, temp: temp, theme: theme)
    }
    
    mutating func update(from data: Data) {
        pulse = data.pulse
        glucose = data.glucose
        bloodpS = data.bloodpS
        bloodpD = data.bloodpD
        weight = data.weight
        temp = data.temp
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        pulse = data.pulse
        glucose = data.glucose
        bloodpS = data.bloodpS
        bloodpD = data.bloodpD
        weight = data.weight
        temp = data.temp
        theme = data.theme
    }
}


extension Vitals {
    static let sampleData: [Vitals] =
    [
        Vitals(pulse: 47, glucose: 73, bloodpS: 98, bloodpD: 71, weight: 134.2, temp: 96.8, theme: .purp),
        Vitals(pulse: 71, glucose: 78, bloodpS: 110, bloodpD: 89, weight: 182.9, temp: 96.6, theme: .salmon),
        Vitals(pulse: 98, glucose: 90, bloodpS: 137, bloodpD: 86, weight: 210.7, temp: 96.7, theme: .purp),
        Vitals(pulse: 88, glucose: 120, bloodpS: 129, bloodpD: 92, weight:190.0, temp: 96.9, theme: .salmon),

    ]
}


//struct Vitals {
//    var vital: [String] //pulse, glucose, blood pressure, weight, temperature
//    var measurement: [Double]
//
//    //as of now, what comes to mind is a parrallel array to associate them, should I use a struct? The vital has a name, but the vital also has a measurement, how should I organize the model?
//
//    var date = Date()
//
//
//
//}


//extension Vitals {
//    static let sampleData: [Vitals] =
//    [
//        Vitals(vital: ["blood presure"], measurement:[Double]),
//
//    ]
//}

//if they did not measure it, then it should not come up on the view, but how to acheive this?


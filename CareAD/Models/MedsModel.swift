//
//  MedsModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/15/22.
//

import Foundation
import SwiftUI

struct Meds: Identifiable {
    let id: UUID
    var mName: String //meds name
    //    var gName: String //generic name
    var dName: String //docs name
    var dose: String
    var instruction: String
    var refills: Int
    var theme: Theme
    //var unitofMeasurement: String ml or mg mostly
    
    init(id: UUID = UUID(), mName: String, dName: String, dose: String, instruction: String, refills: Int, theme: Theme) {
        self.id = id
        self.mName = mName
        self.dName = dName
        self.dose = dose
        self.instruction = instruction
        self.refills = refills
        self.theme = theme
    }


}


extension Meds {
    
    struct Data {
        
        var mName: String = ""
        var dName: String = ""
        var dose: String = ""
        var instruction: String = ""
        var refills: Int = 0
        var theme: Theme = .purp
    }
    
    var data: Data {
        Data(mName: mName, dName: dName, dose: dose, instruction: instruction, refills: refills, theme: theme)
    }
    
    mutating func update(from data: Data) {
        mName = data.mName
        dName = data.dName
        dose = data.dose
        instruction = data.instruction
        refills = data.refills
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        mName = data.mName
        dName = data.dName
        dose = data.dose
        instruction = data.instruction
        refills = data.refills
        theme = data.theme
    }
}

extension Meds {
    static let sampleData: [Meds] =
    [
        Meds(mName: "Tenormin",  dName: "Christine Chin", dose: "75 mg", instruction: "daily at bedtime", refills: 0, theme: .poppy),
        Meds(mName: "Cozaar",  dName: "Sahil Parikh", dose: "100 mg", instruction: "daily with meal", refills: 2, theme: .buttercup),
        Meds(mName: "Tresiba", dName: "Cluney Lefevre", dose: "15 ml", instruction: "daily at bedtime", refills: 3, theme: .sky),
        Meds(mName: "Ozempic", dName: "Cluney Lefevre", dose: "0.5 ml", instruction: "once weekly", refills: 2, theme: .salmon),
        Meds(mName: "Januvia", dName: "Cluney Lefevre", dose: "50 mg", instruction: "daily at morning", refills: 3, theme: .periwinkle)
    ]
}
 

//gName: "n/a", 

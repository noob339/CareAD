//
//  AppointmentModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/16/22.
//

import Foundation
import SwiftUI

struct Appointment: Identifiable {
 
    //var newOrFollowOrOther: Bool
    let id: UUID
    var typeOfVisit: String
    var date: String
    var address: String
    var phoneNumber: String
    var dName: String // doctorName
    var bName: String // buildingName
    var specialization: String
    var theme: Theme
    
    init(id: UUID = UUID(),typeOfVisit: String, date: String, address: String,  phoneNumber: String, dName: String, bName: String, specialization: String , theme:Theme) {
        self.id = id
        self.typeOfVisit = typeOfVisit
        self.date = date
        self.address = address
        self.phoneNumber = phoneNumber
        self.dName = dName
        self.bName = bName
        self.specialization = specialization
        self.theme = theme
    }
}

extension Appointment {
    
    struct Data {
        var typeOfVisit: String = ""
        var date: String = ""
        var address: String = ""
        var phoneNumber: String = ""
        var dName: String = "" // doctorName
        var bName: String = "" // buildingName
        var specialization: String = ""
        var theme: Theme = .salmon
    }
    
    var data: Data {
        
        Data(typeOfVisit: typeOfVisit, date: date, address: address, phoneNumber: phoneNumber, dName: dName, bName: bName, specialization: specialization, theme: theme)
    }
    
    mutating func update(from data: Data) {
        typeOfVisit = data.typeOfVisit
        date = data.date
        address = data.address
        phoneNumber = data.phoneNumber
        dName = data.dName
        bName = data.bName
        specialization = data.specialization
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        typeOfVisit = data.typeOfVisit
        date = data.date
        address = data.address
        phoneNumber = data.phoneNumber
        dName = data.dName
        bName = data.bName
        specialization = data.specialization
        theme = data.theme
    }
}

extension Appointment {
    static let sampleData: [Appointment] =
    [
        Appointment(typeOfVisit: "MRI", date: "September 24th, 2022", address: "161 Ft Washington, 10032", phoneNumber: "212-305-5555", dName: "Chin", bName: "Heart Pavillion", specialization: "Oncology", theme: .buttercup),
        Appointment(typeOfVisit: "Follow up", date: "August 1st, 2022",address: "173 Ft Washington, 10032", phoneNumber: "212-305-0700", dName: "Parikh", bName: "Milstein", specialization: "Cardiologist", theme: .magenta),
        Appointment(typeOfVisit: "Follow up", date: "October 11th, 2022", address: "1577 St Nicholas, 10032", phoneNumber: "212-305-5555", dName: "Salas", bName: "Naomi's Barretes Diabetes Center", specialization: "Endocrinology", theme: .poppy)
    ]
}

//make an extension with an enum where you are able to basically select whether its a new patient visit, follow up visit or a special procedure

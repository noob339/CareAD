//
//  ContactModel.swift
//  CareAD
//
//  Created by Euripides Soto on 7/16/22.
//

import Foundation
import SwiftUI


struct Contacts: Identifiable {
    let id: UUID
    var fName: String
    var lName: String
    var mobilePhone: String
    var workPhone: String
    var relation: String
    var email: String
    var theme: Theme
    //address
    //medical appointment
    
    init(id: UUID = UUID(), fName: String, lName: String, mobilePhone: String, workPhone: String, relation: String, email:String, theme:Theme) {
        self.id = id
        self.fName = fName
        self.lName = lName
        self.mobilePhone = mobilePhone
        self.workPhone = workPhone
        self.relation = relation
        self.email = email
        self.theme = theme
    }
}

extension Contacts {
    
    struct Data {
        var fName: String = ""
        var lName: String = ""
        var mobilePhone: String = ""
        var workPhone: String = ""
        var relation: String = ""
        var email: String = ""
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(fName: fName, lName: lName, mobilePhone: mobilePhone, workPhone: workPhone, relation: relation, email: email, theme: theme)
    }
    
    mutating func update(from data: Data) {
        fName = data.fName
        lName = data.lName
        mobilePhone = data.mobilePhone
        workPhone = data.workPhone
        relation = data.relation
        email = data.email
        theme = data.theme
    }
    
    init(data: Data) {
        id = UUID()
        fName = data.fName
        lName = data.lName
        mobilePhone = data.mobilePhone
        workPhone = data.workPhone
        relation = data.relation
        email = data.email
        theme = data.theme
    }
    
    
}

extension Contacts {
    static let sampleData: [Contacts] =
    [
        Contacts(fName: "Euripides", lName: "Soto", mobilePhone: "646-646-6446", workPhone: "718-718-7118", relation: "grandson", email: "euri@gmail.com", theme: .purp),
        Contacts(fName: "Professor", lName: "Azhar", mobilePhone: "555-555-5555", workPhone: "213-213-2113", relation: "Endocrinologist", email: "azhar@gmail.com", theme: .salmon),
        Contacts(fName: "Andrew", lName: "Rubinstein", mobilePhone: "347-347-3447", workPhone: "305-305-3005", relation: "Neurologist", email: "andrew@gmail.com", theme: .periwinkle),
        Contacts(fName: "Alan", lName: "Turing", mobilePhone: "011-010-0110-", workPhone: "234-225-2543", relation: "Uncle", email: "n/a", theme: .orange),
        Contacts(fName: "St jesus Pharmacy", lName: "", mobilePhone: "121-132-2532", workPhone: "534-345-2432", relation: "", email: "n/a", theme: .seafoam)
        
    ]
}

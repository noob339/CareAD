//
//  Profile.swift
//  CareAD
//
//  Created by Euripides Soto on 6/23/22.
//

import SwiftUI

struct Profile//: Identifiable
{
    //should these be constant?
    //var credentials = Credentials(email: email, password: password)
    //let id: UUID
    var fName:String = ""
    var lName: String = ""
    var email: String = ""  // = credentials.email //uses the credentials struct
    var password: String = "" // = credentials.password
    var phoneNumber: String = ""
}

extension Profile{
    static let sampleData: [Profile] =
    [
        Profile(fName: "Julio", lName: "Marte", email: "jdawg@gmail.com", password: "", phoneNumber: "888-888-8888"),
        Profile(fName: "Geliana", lName: "Pujols", email: "gpujols@gmail.com", password: "", phoneNumber: "212-212-2112"),
        Profile(fName: "Jacob", lName: "Ogando", email: "jogando@gmail.com", password: "", phoneNumber: "718-718-7118"),
       
    ]
}

/*
    
    //methods to update, save, set, etc
    
    init(id: UUID = UUID(), fName: String, lName: String, email: String, password: String, phoneNumber: String)
    {
        self.id = id
        self.fName = fName
        self.lName = lName
        self.email = email
        self.password = password
        self.phoneNumber = phoneNumber
    }
    
}

//how to connect credentials with profile without creating a circular reference

extension Profile
{
    struct Data //different from Data in the foundation struture
    {
        
        var fName:String = ""
        var lName: String = ""
        var email: String = ""  //store the email in arrays so I need a function to add, delete, replace?,
        var password: String = ""
        var phoneNumber: String = ""
    }
 
    var data: Data
    {
        Data(fName: fName, lName: lName, email: email, password: password, phoneNumber: phoneNumber)
    }
    
    //when was this introduced and how?
    mutating func update(from data: Data) {
        fName = data.fName
        lName = data.lName
        email = data.email
        password = data.password
        phoneNumber = data.phoneNumber
    }
    
    init(data: Data) {
        id = UUID()
        fName = data.fName
        lName = data.lName
        email = data.email
        password = data.password
        phoneNumber = data.phoneNumber
        
    }
}


//its best to use a dictionary here but im not familiar with how exactly to use them yet
//extension Profile
//{
//    static let sampleData: [Profile] =
//    {
//
//
//
//    }
//}

*/

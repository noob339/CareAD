//
//  ContactsCardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/17/22.
//

import SwiftUI

struct ContactsCardView: View {
    let contact: Contacts
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(contact.fName) + Text(" ") + Text(contact.lName)
                Spacer()
                Text(contact.mobilePhone)
                    .font(.body)
                
            }
            .font(.title2)
            Spacer()
            
            Text(contact.relation)
                
            
            Spacer()
            
            HStack {
                Text(contact.email)
                Spacer()
                Text(contact.workPhone)
                    .offset(y: 10)
            }
        }
        .padding()

    }
    
}

struct ContactsCardView_Previews: PreviewProvider {
    static var contact = Contacts.sampleData[0]
    static var previews: some View {
        ContactsCardView(contact: contact)
            .background(Color("purp"))
            .previewLayout(.fixed(width: 400, height: 120))
            .border(.gray)
    }
}

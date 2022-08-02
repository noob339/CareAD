//
//  ContactsEditView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct ContactsEditView: View {
    
    @Binding var data: Contacts.Data
    
    var body: some View {
        Form {
            Section(header: Text("Contact Info")) {
                TextField("First", text: $data.fName)
                TextField("Last", text: $data.lName)
                TextField("Mobile", text: $data.mobilePhone)
                TextField("Work Phone", text: $data.workPhone)
                TextField("Relation", text: $data.relation)
                TextField("Email", text: $data.email)
                ThemePicker(selection: $data.theme)
            }
        }
    }
}

struct ContactsEditView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsEditView(data: .constant(Contacts.sampleData[0].data))
    }
}

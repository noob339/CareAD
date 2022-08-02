//
//  ContactsDetailView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct ContactsDetailView: View {
    
    @Binding var contact: Contacts
    @State private var data = Contacts.Data()
    @State private var isPresentingContactEditView = false
    
    var body: some View {
        
        List {
            Section(header: Text("Contacts Info")) {
                HStack {
                    Label("Name: ", systemImage: "person.fill")
                    Spacer()
                    Text("\(contact.fName) \(contact.lName)")
                }
                HStack {
                    Label("Mobile: ", systemImage: "iphone")
                    Spacer()
                    Text("\(contact.mobilePhone)")
                }
                HStack {
                    Label("Work: ", systemImage: "phone")
                    Spacer()
                    Text("\(contact.workPhone)")
                }
                HStack {
                    Label("Relation: ", systemImage: "person.2.circle")
                    Spacer()
                    Text("\(contact.relation)")
                }
                HStack {
                    Label("Email: ", systemImage: "at.circle")
                    Spacer()
                    Text("\(contact.email)")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(contact.theme.name)
                        .padding(4)
                        .foregroundColor(contact.theme.accentColor)
                        .background(contact.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
        .toolbar {
            Button("Edit") {
                isPresentingContactEditView = true
            }
        }
        .sheet(isPresented: $isPresentingContactEditView) {
            NavigationView {
                ContactsEditView(data: $data)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingContactEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingContactEditView = false
                                contact.update(from: data)
                            }
                        }
                    }
                    .foregroundColor(Color("purp"))
            }
           
        }
    }
}

struct ContactsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContactsDetailView(contact: .constant(Contacts.sampleData[0]))
        }
    }
}

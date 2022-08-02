//
//  ContactsMainView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/17/22.
//


//needs the add, delete, edit functions

import SwiftUI

struct ContactsMainView: View {
    @Binding var contacts: [Contacts]
    @State private var isPresentingNewContactView = false
    @State private var newContactData = Contacts.Data()
    var body: some View {
        ScrollView {
            VStack {
                Text("Contacts")
                    .font(.largeTitle)
                    .padding(.top)
                    .foregroundColor(Color("purp"))
                
                Image("Icon-100")
                
                List {
                    ForEach($contacts) { $contact in
                        NavigationLink(destination: ContactsDetailView(contact: $contact)) {
                            ContactsCardView(contact: contact)
                        }
                        .listRowBackground(contact.theme.mainColor)
                    }
            
                }
                .toolbar {
                    Button(action: {
                        isPresentingNewContactView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Contact")
                }
                .sheet(isPresented: $isPresentingNewContactView) {
                    NavigationView {
                        ContactsEditView(data: $newContactData)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingNewContactView = false
                                        newContactData = Contacts.Data()
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Add") {
                                        let newContact = Contacts(data: newContactData)
                                        contacts.append(newContact)
                                        isPresentingNewContactView = false
                                        newContactData = Contacts.Data()
                                    }
                                }
                            }
                            .foregroundColor(.black)
                    }
                }
                .frame(width: 440, height: 800, alignment: .center)
                
            }
            .background(.white)
        }
        
        
        
        
    }
}

struct ContactsMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContactsMainView(contacts: .constant(Contacts.sampleData))
        }
    }
}

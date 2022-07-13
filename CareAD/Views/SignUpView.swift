//
//  SignUpView.swift
//  CareAD
//
//  Created by Euripides Soto on 6/25/22.
//

import SwiftUI

struct SignUpView: View {
    
    //this will be the profile model
    @State var fName: String = ""
    @State var lName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var phone: String = ""
    
    //@Binding var data: Profile.Data //figure out how this works and how to add it so that it works with that model.

    var body: some View {
        
        
        
        let purp = Color("purp")
        let salmon = Color("salmon")
        
        VStack
        {
            HStack
            {
                Text("Create")
                    .font(.title)
                    .padding(.top, 30)
                    .foregroundColor(purp)
                
                Text("Account")
                    .font(.title)
                    .padding(.top, 30)
                    .foregroundColor(salmon)
            }
            
            
            Image("Icon-100")
            
            Form
            {
                Section
                {
//
                    TextField("First Name", text: $fName)
                }
                
                Section
                {
                    
                    TextField("Last Name", text: $lName)
                }
                
                Section
                {
                    
                    TextField("Email", text: $email)
                }
                
                Section
                {
                    
                    SecureField("Password", text: $password)
                }
                
                Section
                {
                    
                    TextField("Phone Number", text: $phone)
                }
                
                Spacer()
                
                Button("Create Account")
                {
    //                NavigationLink(SignUpView())
    //                {
    //                      navigate to a view that either displays succes and a go back to login OR a failure in which case we need to handle those errors of course
    //                }
                }
                .buttonStyle(CareADButton())
            }
        }
        .toolbar
        {
            ToolbarItem(placement: .cancellationAction)
            {
                Button("Back")
                {
                    //do I need to do a boolean for what it is presenting OR
                    //Can I just place the login view here again
                }
            }
            
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

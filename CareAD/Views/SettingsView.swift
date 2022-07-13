//
//  SettingsView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/6/22.
//

import SwiftUI

//should be bounded to the profile model and linked well

struct SettingsView: View {
    
    //this will be the profile model
    @State var fName: String = ""
    @State var lName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var phone: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Settings")
                    .font(.largeTitle)
                    .padding(.top)
                    .foregroundColor(Color("purp"))
            }
            
            
            Image("Icon-100")
            VStack {
                Form {
                    Section(header: Text("First Name"))
                    {

                        TextField("First Name", text: $fName)
                    }
                    
                    Section(header: Text("Last Name"))
                    {
                        
                        TextField("Last Name", text: $lName)
                    }
                    
                    Section(header: Text("Email Address"))
                    {
                        
                        TextField("Email", text: $email)
                    }
                    
                    Section(header: Text("password"))
                    {
                        
                        SecureField("Password", text: $password)
                    }
                    
                    Section(header: Text("Phone Number"))
                    {
                        
                        TextField("Phone Number", text: $phone)
                    }
                    
                    Section(header: Text("Patient ID"))
                    {
                        
                        TextField("ID Number", text: $phone)
                    }
                }
                    
                Text("Save")
                    .frame(width: 200, height: 60)
                    .foregroundColor(.white)
                    .background(Color("purp"))
                    .font(.system(size: 28, weight: .bold))
                    .cornerRadius(20)
                
                Text("Log Out")
                    .frame(width: 200, height: 60)
                    .foregroundColor(.white)
                    .background(.gray)
                    .font(.system(size: 28, weight: .bold))
                    .cornerRadius(20)
                
            }
            
        }
        
        
            
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

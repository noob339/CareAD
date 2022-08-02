//
//  LoginView.swift
//  CareAD
//
//  Created by Euripides Soto on 6/20/22.
//

import SwiftUI



struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    
    
    var body: some View {
        VStack
        {
            Spacer()
            Image("CareLogin")
                .resizable()
                .scaledToFit()
                .onTapGesture{
                    UIApplication.shared.endEditing()
                }
            Spacer()
            TextField("Email Address", text: $loginVM.credentials.email)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)

            SecureField("Password", text: $loginVM.credentials.password)
            if loginVM.showProgressView
            {
                ProgressView()
            }
            Spacer()
            Button("Login")
            {
                loginVM.login { success in
                    authentication.updateValidation(success: success)
                }
            }
            .buttonStyle(CareADButton())
            .disabled(loginVM.loginDisabled)
            Spacer()
                .frame(height: 20)
            Button("Sign-Up")
            {
//                NavigationLink(SignUpView())
//                {
//
//                }
            }
            .buttonStyle(CareADButton())

        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView) //when progress view shows, disable every interation in the vstack
        
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

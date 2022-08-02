//
//  CareADApp.swift
//  CareAD
//
//  Created by Euripides Soto on 6/15/22.
//


//gather all notes in a central place for features but in a way that you know what file it should be in
//make more comments across all the code
//Left off in updating app from scrumdinger, specifically adding the history and creating the history model


import SwiftUI

@main
struct CareADApp: App {
    
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                DashboardView()
                //DashboardView() //this view is presented upon a succesful login
                    .environmentObject(authentication)
            }
            else {
                LoginView() //basically try to log in again
                    .environmentObject(authentication)
            }
        }
    }
}

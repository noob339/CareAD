//
//  CareADApp.swift
//  CareAD
//
//  Created by Euripides Soto on 6/15/22.
//

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

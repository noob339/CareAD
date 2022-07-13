//
//  Authentication.swift
//  CareAD
//
//  Created by Euripides Soto on 6/21/22.
//

import SwiftUI

class Authentication: ObservableObject
{
    @Published  var isValidated = false
    
    func updateValidation(success: Bool ) -> Void
    {
        withAnimation{
            isValidated = success
        }
    }
}

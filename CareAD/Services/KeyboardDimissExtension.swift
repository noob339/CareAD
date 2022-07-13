//
//  KeyboardDimissExtension.swift
//  CareAD
//
//  Created by Euripides Soto on 6/19/22.
//

import UIKit

extension UIApplication
{
    func endEditing() -> Void
    {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

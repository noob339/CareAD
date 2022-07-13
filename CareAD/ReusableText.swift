//
//  ReusableText.swift
//  CareAD
//
//  Created by Euripides Soto on 7/8/22.
//

import Foundation
import SwiftUI

struct ReusableText: View {
    var text: String
    var size: CGFloat
    
    var body: some View {
        
        Text(text)
            .font(.system(size: size, weight: .bold, design: .rounded))
            .foregroundColor(Color("salmon"))
            .shadow(color: Color("purp"), radius: 2, x: 0, y: 3)
            .padding()
    }
}


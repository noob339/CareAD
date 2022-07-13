//
//  PortalButtons.swift
//  CareAD
//
//  Created by Euripides Soto on 7/5/22.
//

import SwiftUI
struct PortalButtons: ButtonStyle
{
    var font: Font = .title
    var padding: CGFloat = 8
    var bgColor = Color("purp")
    var fgColor = Color.white
    var cornerRadius: CGFloat = 8
    //var fontWeight: Font = .bold
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 125, height: 200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("purp")))
            .foregroundColor(Color.white)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            
    }
}

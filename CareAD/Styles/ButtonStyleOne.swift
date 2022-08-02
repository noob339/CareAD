//
//  ButtonStyleOne.swift
//  CareAD
//
//  Created by Euripides Soto on 6/21/22.
//

import SwiftUI

struct CareADButton: ButtonStyle
{
    var font: Font = .title
    var padding: CGFloat = 0
    var bgColor = Color("purp")
    var fgColor = Color.white
    var cornerRadius: CGFloat = 20
    //var fontWeight: Font = .bold
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font) //a font
            //.fontWeight(fontWeight)
            .frame(width: 380, height: 50, alignment: .center)
            .background(bgColor) //rounds the edges
            .foregroundColor(fgColor) //letter colors
            .padding([.leading, .trailing, .bottom], padding)
            .opacity(configuration.isPressed ? 0.5 : 1.0) //if pressed opacity 0.5, else 1.0
            .cornerRadius(cornerRadius) // rounds the corners
    }
}

//////////////////////////////////////////////////////

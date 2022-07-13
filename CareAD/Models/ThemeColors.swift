//
//  ThemeColors.swift
//  CareAD
//
//  Created by Euripides Soto on 6/15/22.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable //themes folder in asset catalog
{
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color //provides high contrast
    {
        switch self
        {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color
    {
        Color(rawValue) //inits a color from the asset catalog?
    }
    
    var name:String
    {
        rawValue.capitalized //capitalizes the names of the colors
    }
    
    var id: String {
            name
        }
}

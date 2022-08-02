//
//  Theme.swift
//  CareAD
//
//  Created by Euripides Soto on 7/20/22.
//

import Foundation
import SwiftUI

enum Theme: String, CaseIterable, Identifiable{
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
    case purp
    case salmon
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .salmon: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple, .yellow, .purp: return .gray
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}

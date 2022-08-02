//
//  ADLCardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/6/22.
//
import SwiftUI

struct ADLCardV: View {
    let adl: ADLSurvey
    
    var body: some View {
        
        let date = Date()
        
        VStack() {
            HStack {
                Text(adl.surveyType) + Text("  Survey")
                Spacer()
                Text("Score: \(adl.score)")
                    .font(.title)
            }
            .font(.title2)
            
            Spacer()
                .frame(height: 15)
            HStack {
                Text(date, style: .date) + Text("    ")+Text(Image(systemName: "calendar"))
                    .font(.title2)
                Spacer()
                Text(date, style: .time)  + Text("    ")+Text(Image(systemName: "clock"))
                    .font(.title2)
            }
        }
        .padding()
    }
}

struct ADLCardV_Previews: PreviewProvider {
    static var adl = ADLSurvey.sampleData[0]
    
    static var previews: some View {
        ADLCardV(adl: adl)
            .background(Color("purp"))
            .previewLayout(.fixed(width: 400, height: 80))
    }
}



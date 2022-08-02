//
//  ADLCardV.swift
//  CareAD
//
//  Created by Euripides Soto on 7/17/22.
//

import SwiftUI

//what would the model look like for IADL
//it has the date
//it has the type of adl


struct ADLCardView: View {
    
//    let survey: ADLSurvey
    let date = Date()
    
    var body: some View {

            VStack() {
                HStack {
                    Text("BADL")
                        .font(.title2)
                    Spacer()
                    Text("Score: 4/6")
                        .font(.title2)
                }
                
                Spacer()
                    .frame(height: 15)
                HStack
                {
                    Text(date, style: .date)
                        .font(.title2)
                    Spacer()
                    Text(date, style: .time)
                        .font(.title2)
                }
            }
            .foregroundColor(Color.gray)
            .padding()
    }
}

struct ADLCardView_Previews: PreviewProvider {
//    static var survey = ADLSurvey.sampleData[0]
    static var previews: some View {
        ADLCardView()
            .background(Color("purp"))
            .previewLayout(.fixed(width: 400, height: 80))
    }
}

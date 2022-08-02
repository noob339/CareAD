//
//  ADLEditView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct ADLEditView: View {
    
    @Binding var data: ADLSurvey.Data
    
    var body: some View {
        Form {
            Section(header: Text("Survey Info")) {
                TextField("Survey", text: $data.surveyType)
                TextField("Score", value: $data.score, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                ThemePicker(selection: $data.theme)
                
            }
        }
    }
}

struct ADLEditView_Previews: PreviewProvider {
    static var previews: some View {
        ADLEditView(data: .constant(ADLSurvey.sampleData[0].data))
    }
}

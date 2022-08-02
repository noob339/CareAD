//
//  VitalsEditView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct VitalsEditView: View {
    
    @Binding var data: Vitals.Data
    
    var body: some View {
        Form {
            Section(header: Text("Vitals Info")) {
                TextField("Pulse", value: $data.pulse, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField("Glucose", value: $data.glucose, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField("BP Systoliic", value: $data.bloodpS, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField("BP Dystollic", value: $data.bloodpD, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField("Weight", value: $data.weight, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField("Temp", value: $data.temp, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                ThemePicker(selection: $data.theme)
                
            }
        }
    }
}

struct VitalsEditView_Previews: PreviewProvider {
    static var previews: some View {
        VitalsEditView(data: .constant(Vitals.sampleData[0].data))
    }
}

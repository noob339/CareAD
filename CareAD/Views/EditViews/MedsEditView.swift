//
//  MedsEditView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct MedsEditView: View {
    
    @Binding var data: Meds.Data
    
    var body: some View {
        Form {
            Section(header: Text("Medicine Info")) {
                TextField("Medicine Name", text: $data.mName)
                TextField("Doctor Name", text: $data.dName)
                TextField("Dose", text: $data.dose)
                TextField("Instruction", text: $data.instruction)
                HStack {
                    Slider(value: IntDoubleBinding($data.refills).doubleValue, in: 0...10, step: 1) {
                        Text("Refills")
                    }
                    Spacer()
                    Text("\(Int(data.refills)) refills")
                }
                ThemePicker(selection: $data.theme)
                
                
            }
        }
    }
}

struct MedsEditView_Previews: PreviewProvider {
    static var previews: some View {
        MedsEditView(data: .constant(Meds.sampleData[0].data))
    }
}

struct IntDoubleBinding {
    let intValue : Binding<Int>
    
    let doubleValue : Binding<Double>
    
    init(_ intValue : Binding<Int>) {
        self.intValue = intValue
        
        self.doubleValue = Binding<Double>(get: {
            return Double(intValue.wrappedValue)
        }, set: {
            intValue.wrappedValue = Int($0)
        })
    }
}

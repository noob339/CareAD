//
//  VitalsDetailView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct VitalsDetailView: View {
    @Binding var vital: Vitals
    @State private var isPresentingVitalEditView = false
    @State private var data = Vitals.Data()
    
    var body: some View {
        List {
            Section(header: Text("Vitals Info")) {
                HStack {
                    Label("Pulse: ", systemImage: "heart.fill")
                    Spacer()
                    Text("\(vital.pulse)")
                }
                HStack {
                    Label("Glucose: ", systemImage: "cube.fill")
                    Spacer()
                    Text("\(vital.glucose)")
                }
                HStack {
                    Label("Blood Pressure: ", systemImage: "drop.circle.fill")
                    Spacer()
                    Text("\(vital.bloodpS) / \(vital.bloodpD)")
                }
                HStack {
                    Label("Weight: ", systemImage: "scalemass")
                    Spacer()
                    Text("\(vital.weight)")
                }
                HStack {
                    Label("Temperature: ", systemImage: "thermometer")
                    Spacer()
                    Text("\(vital.temp)")
                }
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(vital.theme.name)
                        .padding(4)
                        .foregroundColor(vital.theme.accentColor)
                        .background(vital.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
        .toolbar {
            Button("Edit") {
                isPresentingVitalEditView = true
            }
        }
        .sheet(isPresented: $isPresentingVitalEditView) {
            NavigationView {
                VitalsEditView(data: $data)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingVitalEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingVitalEditView = false
                                vital.update(from: data)
                            }
                        }
                    }
                    .foregroundColor(Color("purp"))
            }
           
        }
    }
}

struct VitalsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VitalsDetailView(vital: .constant(Vitals.sampleData[0]))
        }
    }
}

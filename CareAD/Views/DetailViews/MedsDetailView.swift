//
//  MedsDetailView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/29/22.
//

import SwiftUI

struct MedsDetailView: View {
    
    @Binding var med: Meds
    @State private var data = Meds.Data()
    @State private var isPresentingMedEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Medicine Info")) {
                HStack {
                    Label("Medicine: ", systemImage: "pills")
                    Spacer()
                    Text("\(med.mName)")
                        .padding()
                }
                HStack {
                    Label("Doctor: ", systemImage: "stethoscope.circle.fill")
                    Spacer()
                    Text("\(med.dName)")
                }
                HStack {
                    Label("Dose: ", systemImage: "drop.circle")
                    Spacer()
                    Text("\(med.dose)")
                }
                HStack {
                    Label("Instruction: ", systemImage: "paperclip")
                    Spacer()
                    Text("\(med.instruction)")
                }
                HStack {
                    Label("Refills: ", systemImage: "plus")
                    Spacer()
                    Text("\(med.refills)")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(med.theme.name)
                        .padding(4)
                        .foregroundColor(med.theme.accentColor)
                        .background(med.theme.mainColor)
                        .cornerRadius(4)
                }

            }
        }
        .toolbar {
            Button("Edit") {
                isPresentingMedEditView = true
                data = med.data
            }
        }
        .sheet(isPresented: $isPresentingMedEditView) {
            NavigationView {
                MedsEditView(data: $data)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingMedEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingMedEditView = false
                                med.update(from: data)
                            }
                        }
                    }
                    .foregroundColor(Color("purp"))
            }
           
        }
    }
}

struct MedsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MedsDetailView(med: .constant(Meds.sampleData[0]))
        }
    }
}

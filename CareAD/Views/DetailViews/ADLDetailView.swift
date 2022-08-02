//
//  ADLDetailView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//


//we should have the responses here as well to be able to see the past responses

import SwiftUI

struct ADLDetailView: View {
    
    @Binding var adl: ADLSurvey
    @State private var data = ADLSurvey.Data()
    @State private var isPresentingADLEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Survey Info")) {
                HStack {
                    Label("Survey: ", systemImage: "doc.on.clipboard")
                    Spacer()
                    Text("\(adl.surveyType)")
                }
                HStack {
                    Label("Score: ", systemImage: "chart.bar.doc.horizontal")
                    Spacer()
                    Text("\(adl.score)")
                }
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(adl.theme.name)
                        .padding(4)
                        .foregroundColor(adl.theme.accentColor)
                        .background(adl.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
        .toolbar {
            Button("Edit") {
                isPresentingADLEditView = true
            }
        }
        .sheet(isPresented: $isPresentingADLEditView) {
            NavigationView {
                ADLEditView(data: $data)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingADLEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingADLEditView = false
                                adl.update(from: data)
                            }
                        }
                    }
                    .foregroundColor(Color("purp"))
            }
           
        }
    }
}

struct ADLDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ADLDetailView(adl: .constant(ADLSurvey.sampleData[0]))
        }
    }
}

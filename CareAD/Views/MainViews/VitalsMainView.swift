//
//  VitalsMainView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/16/22.
//

import SwiftUI

struct VitalsMainView: View {
    @Binding var vitals: [Vitals]
    @State private var isPresentingNewVitalView = false
    @State private var newVitalData = Vitals.Data()
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Vitals")
                        .font(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color("purp"))
                    
                    Image("Icon-100")
                }
                
                List {
                    Section(header: Text("Recent Surveys")) {
                        ForEach($vitals) { $vital in
                            NavigationLink(destination: VitalsDetailView(vital: $vital)) {
                                VitalsCardView(vital: vital)
                            }
                            .listRowBackground(vital.theme.mainColor)
                        }
                    }
                }
                .toolbar {
                    Button(action: {
                        isPresentingNewVitalView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Vital")
                }
                .sheet(isPresented: $isPresentingNewVitalView) {
                    NavigationView {
                        VitalsEditView(data: $newVitalData)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingNewVitalView = false
                                        newVitalData = Vitals.Data()
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Add") {
                                        let newVitals = Vitals(data: newVitalData)
                                        vitals.append(newVitals)
                                        isPresentingNewVitalView = false
                                        newVitalData = Vitals.Data()
                                    }
                                }
                            }
                            .foregroundColor(.black)
                    }
                }
                .frame(width: 440, height: 800, alignment: .center)
            }
        }
    }
}

struct VitalsMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VitalsMainView(vitals: .constant(Vitals.sampleData))
        }
    }
}

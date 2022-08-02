//
//  MedsMainView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/16/22.
//

import SwiftUI

struct MedsMainView: View {
    @Binding var meds: [Meds]
    @State private var isPresentingNewMedsView = false
    @State private var newMedsData = Meds.Data()
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Medicine")
                        .font(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color("purp"))
                    
                    Image("Icon-100")
            
                }
                
                List {
                    Section(header: Text("Current Meds")) {
                        ForEach($meds) { $med in
                            NavigationLink(destination: MedsDetailView(med: $med)) {
                                MedsCardView(med: med)
                            }
                            .listRowBackground(med.theme.mainColor)
                                
                        }
                    }
                }
                .toolbar {
                    Button(action: {
                        isPresentingNewMedsView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Meds")
                }
                .sheet(isPresented: $isPresentingNewMedsView) {
                    NavigationView {
                        MedsEditView(data: $newMedsData)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingNewMedsView = false
                                        newMedsData = Meds.Data()
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Add") {
                                        let newMeds = Meds(data: newMedsData)
                                        meds.append(newMeds)
                                        isPresentingNewMedsView = false
                                        newMedsData = Meds.Data()
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

struct MedsMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MedsMainView(meds: .constant(Meds.sampleData))
        }
    }
}

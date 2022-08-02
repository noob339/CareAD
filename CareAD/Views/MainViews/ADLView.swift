//
//  ADLView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/11/22.
//

import SwiftUI

struct ADLView: View {
    
    @Binding var ADL: [ADLSurvey]
    @State private var isPresentingNewSurveyView = false
    @State private var newSurveyData = ADLSurvey.Data()
    
    var body: some View {

        VStack{
            Spacer()
                .frame(height: 200)
            
            Text("ADL Survey")
                .font(.largeTitle)
                .padding(.top)
                .foregroundColor(Color("purp"))
            
            Image("Icon-100")
            
            HStack
            {
                VStack {
                        Link(destination: URL(string: "http://ec2-13-59-241-114.us-east-2.compute.amazonaws.com/")!, label:{
                            Image(systemName: "plus.circle")
                                .font(.system(size: 50, weight: .bold))
                                .frame(width: 125, height: 120)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 20).fill(Color("purp")))
                            
                            
                        })
                    Text("ADD IADL")
                        .foregroundColor(Color("purp"))
                        .font(.system(size: 20, weight: .bold))

                }
                
                Spacer()
                    .frame(width: 50)
                
                VStack {
                        Link(destination: URL(string: "http://ec2-13-59-241-114.us-east-2.compute.amazonaws.com:8080")!, label:{
                            Image(systemName: "plus.circle")
                                .font(.system(size: 50, weight: .bold))
                                .frame(width: 125, height: 120)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 20).fill(Color("purp")))
                            
                            
                        })
                    Text("ADD BADL")
                        .foregroundColor(Color("purp"))
                        .font(.system(size: 20, weight: .bold))

                }
                
            }
            
            Spacer()
                .frame(height: 20)

            List {
                Section(header: Text("Past Survey")) {
                    ForEach($ADL) { $adl in
                        NavigationLink(destination: ADLDetailView(adl: $adl)) {
                            ADLCardView()
                        }
                        .listRowBackground(adl.theme.mainColor)
                            
                    }
                }
            }
            .toolbar {
                Button(action: {
                    isPresentingNewSurveyView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Survey")
            }
            .sheet(isPresented: $isPresentingNewSurveyView) {
                NavigationView {
                    ADLEditView(data: $newSurveyData)
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button("Dismiss") {
                                    isPresentingNewSurveyView = false
                                    newSurveyData = ADLSurvey.Data()
                                }
                            }
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Add") {
                                    let newSurvey = ADLSurvey(data: newSurveyData)
                                    ADL.append(newSurvey)
                                    isPresentingNewSurveyView = false
                                    newSurveyData = ADLSurvey.Data()
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

struct ADLView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ADLView(ADL: .constant(ADLSurvey.sampleData))
        }
    }
}






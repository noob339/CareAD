//
//  ApptDetailView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct ApptDetailView: View {
    
    @Binding var appointment: Appointment
    @State private var data = Appointment.Data()
    @State private var isPresentingApptEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Appointment Info")) {
                HStack {
                    Label("Visit: ", systemImage: "calendar.day.timeline.left")
                    Spacer()
                    Text("\(appointment.typeOfVisit)")
                }
                HStack {
                    Label("Date: ", systemImage: "calendar.circle")
                    Spacer()
                    Text("\(appointment.date)")
                }
                HStack {
                    Label("Address: ", systemImage: "location.square")
                    Spacer()
                    Text("\(appointment.address)")
                }
                HStack {
                    Label("Building: ", systemImage: "building.2")
                    Spacer()
                    Text("\(appointment.bName)")
                }
                HStack {
                    Label("Phone Number: ", systemImage: "phone.fill")
                    Spacer()
                    Text("\(appointment.phoneNumber)")
                }
                HStack {
                    Label("Doctor: ", systemImage: "stethoscope.circle.fill")
                    Spacer()
                    Text("\(appointment.dName)")
                }
                HStack {
                    Label("Specialization: ", systemImage: "rosette")
                    Spacer()
                    Text("\(appointment.specialization)")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(appointment.theme.name)
                        .padding(4)
                        .foregroundColor(appointment.theme.accentColor)
                        .background(appointment.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
        .toolbar {
            Button("Edit") {
                isPresentingApptEditView = true
            }
        }
        .sheet(isPresented: $isPresentingApptEditView) {
            NavigationView {
                ApptEditView(data: $data)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingApptEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingApptEditView = false
                                appointment.update(from: data)
                            }
                        }
                    }
                    .foregroundColor(Color("purp"))
            }
           
        }
    }
}

struct ApptDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ApptDetailView(appointment: .constant(Appointment.sampleData[0]))
        }
        
    }
}

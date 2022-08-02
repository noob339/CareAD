//
//  AppointmentMainView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/17/22.
//

import SwiftUI

struct AppointmentMainView: View {
    @Binding var appointments: [Appointment]
    @State private var isPresentingNewApptView = false
    @State private var newApptData = Appointment.Data()
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Appointments")
                        .font(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color("purp"))
                    
                    Image("Icon-100")
                }
                
                List {
                    Section(header: Text("Upcomming Appointments")) {
                        ForEach($appointments) { $appointment in
                            NavigationLink(destination: ApptDetailView(appointment: $appointment)) {
                                AppointmentCardView(appointment: appointment)
                            }
                            .listRowBackground(appointment.theme.mainColor)
                        }
                    }
                }
                .toolbar {
                    Button(action: {
                        isPresentingNewApptView = true
                    }) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Appointment")
                }
                .sheet(isPresented: $isPresentingNewApptView) {
                    NavigationView {
                        ApptEditView(data: $newApptData)
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Dismiss") {
                                        isPresentingNewApptView = false
                                        newApptData = Appointment.Data()
                                    }
                                }
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Add") {
                                        let newAppt = Appointment(data: newApptData)
                                        appointments.append(newAppt)
                                        isPresentingNewApptView = false
                                        newApptData = Appointment.Data()
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

struct AppointmentMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AppointmentMainView(appointments: .constant(Appointment.sampleData))
        }
    }
}

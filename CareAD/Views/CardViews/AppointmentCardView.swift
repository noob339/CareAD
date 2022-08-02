//
//  AppointmentCardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/15/22.
//

import SwiftUI

struct AppointmentCardView: View {
    let appointment: Appointment
    var body: some View {
        
        VStack(spacing: 10) {
            VStack (alignment: .leading) {
                HStack {
                    Text(appointment.typeOfVisit)
                        .font(.title2)
                    Spacer()
                    Text(appointment.dName) + Text(" - ") + Text(appointment.specialization)
                }
                Text(appointment.date)
                
                Text(appointment.bName)
                Text(appointment.address)
                Text(appointment.phoneNumber)
            }
            .padding()
            
        }
    }
}

struct AppointmentCardView_Previews: PreviewProvider {
    static var appointments = Appointment.sampleData[0]
    static var previews: some View {
        AppointmentCardView(appointment: appointments)
            .background(Color("salmon"))
            .previewLayout(.fixed(width: 400, height: 110))
    }
}

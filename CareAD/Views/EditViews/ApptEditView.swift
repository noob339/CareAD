//
//  ApptEditView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/31/22.
//

import SwiftUI

struct ApptEditView: View {
    
    @Binding var data: Appointment.Data
    
    var body: some View {
        Form {
            Section(header: Text("Appointment Info")) {
                TextField("Visit Purpose", text: $data.typeOfVisit)
                TextField("Date", text: $data.date)
                TextField("Address", text: $data.address)
                TextField("Building Name", text: $data.bName)
                TextField("Phone Number", text: $data.phoneNumber)
                TextField("Doctor Name", text: $data.dName)
                TextField("Specialization", text: $data.specialization)
                ThemePicker(selection: $data.theme)
            }
        }
        
    }
}

struct ApptEditView_Previews: PreviewProvider {
    static var previews: some View {
        ApptEditView(data: .constant(Appointment.sampleData[0].data))
    }
}

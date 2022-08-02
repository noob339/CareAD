//
//  VitalsCardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/16/22.
//

import SwiftUI

struct VitalsCardView: View {
    let vital: Vitals
    let date = Date()
    var body: some View {
        VStack(spacing: 10) {
            
            VStack (alignment: .leading) {
                HStack
                {
                    Text("Pulse: ") + Text("\(vital.pulse)")
                    Spacer()
                    Text(date, style: .date) + Text("    ")+Text(Image(systemName: "calendar"))
                        .font(.title2)
                    
                }
                
                Text("Glucose: ") + Text("\(vital.glucose)")
                HStack {
                    Text("BP: ") + Text("\(vital.bloodpS)") + Text("/") + Text("\(vital.bloodpD)")
                    Spacer()
                    Text(date, style: .time)  + Text("    ")+Text(Image(systemName: "clock"))
                        .font(.title2)
                }
                
                Text("Weight: ") + Text("\(vital.weight, specifier: "%.2f")") + Text(" LBS")
                Text("Temp: ") + Text("\(vital.temp, specifier: "%.2f")") + Text(" F")
            }
            
            
            
        }
        .font(.system(size: 16, weight: .bold, design: .rounded))
        .padding()
        
    }
}

struct VitalsCardView_Previews: PreviewProvider {
    static var vital = Vitals.sampleData[0]
    static var previews: some View {
        VitalsCardView(vital: vital)
            .background(Color("purp"))
            .previewLayout(.fixed(width: 400, height: 105))
    }
}

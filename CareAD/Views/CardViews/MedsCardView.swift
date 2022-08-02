//
//  MedsCardView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/15/22.
//

import SwiftUI

struct MedsCardView: View {
    
    let med: Meds
    
    var body: some View {
        VStack (alignment: .leading) {
            
            HStack {
                
                Text(Image(systemName: "pills.fill")) + Text("  ") + Text(med.mName)
                Spacer()
                Text("Dose: ") + Text(med.dose)
                
            }
            
            Spacer()
                .frame(height: 35)
            
           
            HStack {
                
                Text(med.instruction)
                    .font(.system(size: 11, weight: .heavy, design: .default))
                    .offset(y: -10)
                Spacer()
                    .frame(width: 110, height:2)
                Text(med.dName)
                    .font(.system(size: 20, weight: .regular, design: .default))
                   
            }
            
            VStack(alignment: .leading)
            {
                Text("Refills: ") + Text("\(med.refills)")
                    
            }
            .font(.body)
            
        }
        .padding()
        .font(.title2)
    }
}

struct MedsCardView_Previews: PreviewProvider {
    static var med = Meds.sampleData[0]
    
    static var previews: some View {
        MedsCardView(med: med)
            .background(Color("salmon"))
            .previewLayout(.fixed(width: 400, height: 120))
    }
}

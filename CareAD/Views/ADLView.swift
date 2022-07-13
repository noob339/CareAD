//
//  ADLView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/11/22.
//

import SwiftUI

struct ADLView: View {
    var body: some View {

        VStack{
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
            Section(header: Text("Past Survey")) {
                
                ADLCardView()
                    .background(Color("purp"))
                    .previewLayout(.fixed(width: 400, height: 80))
            }
            .foregroundColor(Color("purp"))
            
        }
        .offset(y: -150)
        
        
        
        
        
    }
}

struct ADLView_Previews: PreviewProvider {
    static var previews: some View {
        ADLView()
    }
}

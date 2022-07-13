//
//  BADLQuiz.swift
//  CareAD
//
//  Created by Euripides Soto on 7/8/22.
//

import SwiftUI

struct BADLQuiz: View {
    var body: some View {
        ZStack
        {
            ScrollView
            {
                VStack
                {
                    ReusableText(text: "Basic ADL QUiz", size: 15)
                    
                    Image("Icon-100")
                    
//                    Group
//                    {
//
//                        ReusableText(text: "Bathing" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
//
//                        Spacer()
//
//                        ReusableText(text: "Dressing" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
//
//                        Spacer()
//
//                        ReusableText(text: "Toileting" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
//
//                        Spacer()
//
//
//                    }
//
//                    Group
//                    {
//
//
//                        ReusableText(text: "Transfering" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
//
//                        Spacer()
//
//                        ReusableText(text: "Continence" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
//
//                        Spacer()
//
//                        ReusableText(text: "Feeding" , size: 20)
//                            .lineLimit(3)
//                            .frame(width: UIScreen.main.bounds.size.width, height: 60, alignment: .leading)
//                            .padding()
                //}
                        
                        //Spacer()
                        
                        OptionsView()
                        
                    
            }
            
            }
        }
    }
}

struct BADLQuiz_Previews: PreviewProvider {
    static var previews: some View {
        BADLQuiz()
    }
}


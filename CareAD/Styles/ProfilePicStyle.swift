//
//  ProfilePicStyle.swift
//  CareAD
//
//  Created by Euripides Soto on 7/5/22.
//

import SwiftUI

extension Image{
    
    //takes no params but returns a view, an extension of image
    func profileImageStyle() -> some View{
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:150, height:150)
            .clipShape(Circle())
            .overlay(){
                ZStack{
                    Image(systemName: "camera.fill")
                        .foregroundColor(.gray)
                        .offset(y: 60)
                        
                    //border
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(.white, lineWidth: 4)
                }
            }
    }
}

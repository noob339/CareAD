//
//  ProfilePicView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/5/22.
//

import SwiftUI

struct ProfilePicView: View {
    @State private var profileImage:Image = Image("profile")
    @State private var showImagePicker: Bool = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        VStack
        {
            ZStack
            {
                Color("salmon")
                
                profileImage
                    .profileImageStyle()
                    .onTapGesture {
                        showImagePicker = true
                    }
                    .onChange(of: inputImage) { _ in loadImage()}
                    .sheet(isPresented: $showImagePicker) {
                                ImagePicker(Image: $inputImage)
                    }
                                        
            }
            Spacer()
        }
        
        //.ignoresSafeArea()
    }
    
    func loadImage(){
        guard let inputImage = inputImage else {return}
        profileImage = Image(uiImage: inputImage)
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicView()
    }
}

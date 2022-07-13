//
//  OptionsView.swift
//  CareAD
//
//  Created by Euripides Soto on 7/8/22.
//

import Foundation
import SwiftUI

struct OptionsView: View {
    
    var columns: [GridItem] = Array(repeating: GridItem(.fixed(170), spacing: 0), count: 2)
                                    
    var body: some View {
        
        LazyVGrid(columns: columns)
        {
            ForEach(QuestionModel.quizData[0].optionList) { quizOption in
                QuestionCardView(quizOption: quizOption)
            }
        }
    }
}


struct QuestionCardView: View
{
    let quizOption: quizOption
    
    var body: some View
    {
        VStack
        {
            if (quizOption.isMatched) && (quizOption.isSelected)
            {
                OptionStatusImageView(ImageName: "checkmark")
            }
            else if (!(quizOption.isMatched) && (quizOption.isSelected))
            {
                OptionStatusImageView(ImageName: "xmark")
            }
            else
            {
                AnswerView(quizOption: quizOption)
            }
        }
        .frame(width: 300, height: 150)
        .background(setBackgroundColor())
        .cornerRadius(40)
    }
    
    func setBackgroundColor() -> Color
    {
        if quizOption.isMatched && quizOption.isSelected
        {
            return Color.green
        }
        else if (!(quizOption.isMatched) && (quizOption.isSelected))
        {
            return Color.red
        }
        else
        {
            return Color.white
        }
    }
    
}


struct AnswerView: View
{
    var quizOption: quizOption
    
    var body: some View{
        VStack
        {
            Text(quizOption.optionId)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .frame(width: 50,height: 50)
                .background(quizOption.color.opacity(0.8))
                .foregroundColor(.black)

                
        }
    }
}

struct OptionStatusImageView: View {
    
    var ImageName: String
    
    var body: some View {
        Image(systemName: ImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(EdgeInsets(top: 40, leading: 40, bottom: 40, trailing: 40))
            .foregroundColor(Color.white)
            
        
    }
}






//        LazyVStack(alignment: .leading, spacing: 10)
//        {
//            ForEach
//        }

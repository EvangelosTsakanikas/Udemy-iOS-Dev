//
//  Instructions.swift
//  HPTrivia
//
//  Created by user268168 on 11/20/24.
//

import SwiftUI

struct Instructions: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            InfoBackgroundImage()
            
            VStack {
                Image(.appiconwithradius)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                
                ScrollView {
                    Text("How to Play")
                        .font(.largeTitle)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Group {
                            Text("Welcome to HP Trivia! In this game you will be asked random questions from the HP books and you must guess the right answer or you will lose points!😱")
                            
                            Text("Each question is worth five points, but if you guess a wrong answer, you lose 1 point.")
                            
                            Text("If you are struggling with a question, there is an option to reveal a hint or reveal the book that answers the question. But beware! Using these also decreases 1 point each.")
                        }
                        .padding([.horizontal, .bottom])
                        
                        Text("When you select the correct answer, you will be rewared all the points left for that question and they will be added to your total score")
                            .padding(.horizontal)
                    }
                    .font(.title3)
                    
                    Text("Good Luck!")
                        .font(.title)
                }
                .foregroundStyle(.black)
                
                Button("Done") {
                    dismiss()
                }
                .doneButton()
            }
        }
    }
}

#Preview {
    Instructions()
}

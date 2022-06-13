//
//  TriviaView.swift
//  QuizDemo
//
//  Created by Fatih Ahmet Gürbüz on 6/10/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Land of Trivia")
                    .myTitle()
                
                Spacer()
                
                Text("You got through this round! 😎")
                Text("You got \(triviaManager.score) out of \(triviaManager.length) right")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play Again")
                }
                
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}

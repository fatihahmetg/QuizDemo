//
//  Answer.swift
//  QuizDemo
//
//  Created by Fatih Ahmet Gürbüz on 6/10/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}

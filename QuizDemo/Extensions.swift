//
//  Extensions.swift
//  QuizDemo
//
//  Created by Fatih Ahmet Gürbüz on 6/10/22.
//

import Foundation
import SwiftUI

extension Text {
    func myTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}

//
//  NeumoriphicShadow.swift
//  Coin Tracker
//
//  Created by Aaron Lee on 2020-10-17.
//

import SwiftUI

struct NeumoriphicShadow: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.grayish.opacity(0.1), radius: 5, x: -5, y: -5)
            .shadow(color: Color.darkShadow.opacity(0.2), radius: 5, x: 5, y: 5)
    }
    
}

extension View {
    
    func neumoriphicShadow() -> some View {
        return self.modifier(NeumoriphicShadow())
    }
    
}

//
//  ColorBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 16/10/21.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
            
            
            
            
    }
}

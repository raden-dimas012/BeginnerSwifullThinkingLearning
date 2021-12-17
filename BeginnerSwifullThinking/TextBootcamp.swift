//
//  TextBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 16/10/21.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World dimas!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .italic()
//            .strikethrough(true,color: Color.red)
//            .underline(true,color: Color.blue)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .multilineTextAlignment(.center)
//            .lineLimit(2)
//            .baselineOffset(-10.0)
//            .kerning(3.0)
            .foregroundColor(.blue)
            .frame(width: 250, height: 150, alignment: .leading)
            .minimumScaleFactor(0.1)
            
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}

//
//  PaddingBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            
            Text("This is description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
            
        }
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
            .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10, x: 0.0, y: 10.0)
        )
        .padding(.horizontal,10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}

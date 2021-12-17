//
//  ColorPickerBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            
            ColorPicker("Select a color ",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10.0)
                .foregroundColor(Color.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}

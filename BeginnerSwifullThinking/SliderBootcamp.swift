//
//  SliderBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            
            Text(
                String (format: "%.0f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            // Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
            
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
//                .accentColor(.blue)
            
            Slider(
                value: $sliderValue,
                in: 1...5, step: 1.0,
                onEditingChanged: { (_)
                    in color = .green
                    
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5")) {
                Text("Title")
            }
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}

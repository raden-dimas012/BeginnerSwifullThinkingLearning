//
//  ConditionalBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("IS LOADING: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button("CircleButton : \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("RectangleButton : \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
            
        
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }
            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }
            
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}

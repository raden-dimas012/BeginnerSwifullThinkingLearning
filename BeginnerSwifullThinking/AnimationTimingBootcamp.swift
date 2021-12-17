//
//  AnimationTimingBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(
                            response: 1.0,
                            dampingFraction: 0.5,
                            blendDuration: 1.0))
//                .animation(.spring())
//                .animation(Animation.linear(duration: timing))
            
            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.linear(duration: timing))
        }
        
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

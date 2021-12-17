//
//  AnimationBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button(action: {
//                withAnimation( recomended
//                    Animation
//                        .default
//                        .repeatCount(5,autoreverses: true)
//                        .repeatForever(autoreverses: true)
//                )
 //               {
                    isAnimated.toggle()
//                }
            }, label: {
                Text("Button")
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 45)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(
                    width: isAnimated ? 300 : 100,
                    height: isAnimated ? 300 : 100)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 200 : 0)
//                .animation(
//                    Animation.default.repeatForever(autoreverses: true)
//                )
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}

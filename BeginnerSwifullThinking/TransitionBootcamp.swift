//
//  TransitionBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut)) // nice for launch screen
                    .transition(.asymmetric(
                                    insertion: .move(edge: .leading),
//                                    removal: .move(edge: .bottom)
                                    removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
                
//                    .animation(.easeInOut)
//                    .animation(.spring())
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}

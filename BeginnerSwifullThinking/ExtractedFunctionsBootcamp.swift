//
//  ExtractedFunctionsBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
           
        }
    }
    
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.title)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10.0)
            })
        }
    }
    
    
    func buttonPressed(){
        self.backgroundColor = .blue
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
